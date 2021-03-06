function i4vec_transpose_print ( n, a, title )

%*****************************************************************************80
%
%% I4VEC_TRANSPOSE_PRINT prints an I4VEC "transposed".
%
%  Example:
%
%    A = (/ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 /)
%    TITLE = 'My vector:  '
%
%    My vector:
%
%       1    2    3    4    5
%       6    7    8    9   10
%      11
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 June 2015
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the number of components of the vector.
%
%    Input, integer A(N), the vector to be printed.
%
%    Input, string TITLE, a title.
%
  if ( 0 < s_len_trim ( title ) )
    fprintf ( 1, '\n' );
    fprintf ( 1, '%s\n', title );
  end

  if ( 0 < n )
    for ilo = 1 : 5 : n
      ihi = min ( ilo + 5 - 1, n );
      for i = ilo : ihi
        fprintf ( 1, '%12d', a(i) );
      end
      fprintf ( 1, '\n' );
    end
  else
    fprintf ( 1, '  (empty vector)\n' );
  end

  return
end
