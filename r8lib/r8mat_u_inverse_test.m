function r8mat_u_inverse_test ( )

%*****************************************************************************80
%
%% R8MAT_U_INVERSE_TEST tests R8MAT_U_INVERSE.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    19 April 2009
%
%  Author:
%
%    John Burkardt
%
  n = 4;
%
%  Each row of this definition is a COLUMN of the matrix.
%
  a = [ ...
    1.0, 0.0, 0.0,  0.0; ...
    2.0, 3.0, 0.0,  0.0; ...
    4.0, 5.0, 6.0,  0.0; ...
    7.0, 8.0, 9.0, 10.0 ]';

  fprintf ( 1, '\n' );
  fprintf ( 1, 'R8MAT_U_INVERSE_TEST\n' );
  fprintf ( 1, '  R8MAT_U_INVERSE inverts an upper triangular matrix.\n' );

  r8mat_print ( n, n, a, '  Input matrix A' );
 
  b = r8mat_u_inverse ( n, a );
 
  r8mat_print ( n, n, b, '  Inverse matrix B:' );
 
  c(1:n,1:n) = a(1:n,1:n) * b(1:n,1:n);

  r8mat_print ( n, n, c, '  Product C = A * B:' );

  return
end
