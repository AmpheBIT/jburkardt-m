function lambda = bis_eigenvalues ( alpha, beta, n )

%*****************************************************************************80
%
%% BIS_EIGENVALUES returns the eigenvalues of the BIS matrix.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    27 September 2007
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, real ALPHA, BETA, the scalars which define the
%    diagonal and first superdiagonal of the matrix.
%
%    Input, integer N, the order of the matrix.
%
%    Output, real LAMBDA(N,1), the eigenvalues of the matrix.
%
  lambda(1:n,1) = alpha;

  return
end
