function determ = ortega_determinant ( n, u, v, d )

%*****************************************************************************80
%
%% ORTEGA_DETERMINANT returns the determinant of the ORTEGA matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    06 September 2008
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    James Ortega,
%    Generation of Test Matrices by Similarity Transformations,
%    Communications of the ACM,
%    Volume 7, 1964, pages 377-378.
%
%  Parameters:
%
%    Input, integer N, the order of the matrix.
%    2 <= N.
%
%    Input, real U(N), V(N), vectors which define the matrix.
%    U'V must not equal -1.0.  If, in fact, U'V = 0, and U, V and D are
%    integers, then the matrix, inverse, eigenvalues, and eigenvectors 
%    will be integers.
%
%    Input, real D(N), the desired eigenvalues.
%
%    Output, real DETERM, the determinant.
%
  determ = prod ( d(1:n) );

  return
end
