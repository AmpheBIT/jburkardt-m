function i4vec_indexed_heap_d_insert_test ( )

%*****************************************************************************80
%
%% I4VEC_INDEXED_HEAP_D_INSERT_TEST tests I4VEC_INDEXED_HEAP_D_INSERT.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    27 September 2014
%
%  Author:
%
%    John Burkardt
%
  m = 20;
  n_max = 20;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'I4VEC_INDEXED_HEAP_D_INSERT_TEST\n' );
  fprintf ( 1, '  For an indexed I4VEC,\n' );
  fprintf ( 1, '  I4VEC_INDEXED_HEAP_D_INSERT inserts a value into the heap.\n' );
%
%  Set the data array.  To keep things easy, we will use the indicator vector.
%
  a = i4vec_indicator1 ( m );
%
%  The index array will initially be a random subset of the numbers 1 to M,
%  in random order.
%
  n = 5;
  indx(1:11,1) = [ 9, 2, 8, 14, 5, 7, 15, 1, 19, 20, 3 ]';

  i4vec_print ( m, a, '  The data vector:' );
  i4vec_print ( n, indx, '  The index vector:' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A(INDX):\n' );
  fprintf ( 1, '\n' );
  for i = 1 : n
    fprintf ( 1, '  %4d  %4d\n', i, a(indx(i)) );
  end
%
%  Create a descending heap from the indexed array.
%
  indx = i4vec_indexed_heap_d ( n, a, indx );

  i4vec_print ( n, indx, '  The index vector after heaping:' );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A(INDX) after heaping:\n' );
  fprintf ( 1, '\n' );
  for i = 1 : n
    fprintf ( 1, '  %4d  %4d\n', i, a(indx(i)) );
  end
%
%  Insert five entries, and monitor the maximum.
%
  for i = 1 : 5

    indx_insert = indx(n+1);

    fprintf ( 1, '\n' );
    fprintf ( 1, '  Inserting value %d\n', a(indx_insert) );

    [ n, indx ] = i4vec_indexed_heap_d_insert ( n, a, indx, indx_insert );

    indx_max = i4vec_indexed_heap_d_max ( n, a, indx );

    fprintf ( 1, '  Current maximum is %d\n', a(indx_max) );

  end
  i4vec_print ( m, a, '  The data vector after insertions:' )
  i4vec_print ( n, indx, '  The index vector after insertions:' )
  fprintf ( 1, '\n' );
  fprintf ( 1, '  A(INDX) after insertions:\n' );
  fprintf ( 1, '\n' );
  for i = 1 : n
    fprintf ( 1, '  %4d  %4d\n', i, a(indx(i)) );
  end

  return
end
