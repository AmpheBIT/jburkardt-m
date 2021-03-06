function cx = cscal ( n, ca, cx, incx )

%*****************************************************************************80
%
%% CSCAL scales a complex vector by a constant.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    14 April 2006
%
%  Author:
%
%    MATLAB version by John Burkardt
%
%  Reference:
%
%    Jack Dongarra, Jim Bunch, Cleve Moler, Pete Stewart,
%    LINPACK User's Guide,
%    SIAM, 1979,
%    ISBN13: 978-0-898711-72-1,
%    LC: QA214.L56.
%
%    Charles Lawson, Richard Hanson, David Kincaid, Fred Krogh,
%    Basic Linear Algebra Subprograms for Fortran Usage,
%    Algorithm 539,
%    ACM Transactions on Mathematical Software,
%    Volume 5, Number 3, September 1979, pages 308-323.
%
%  Parameters:
%
%    Input, integer N, the number of entries in the vector.
%
%    Input, complex CA, the multiplier.
%
%    Input, complex CX(*), the vector to be scaled.
%
%    Input, integer INCX, the increment between successive entries of CX.
%
%    Output, complex CX(*), the scaled vector.
%
  cx(1:incx:1+(n-1)*incx) = ca * cx(1:incx:1+(n-1)*incx);

  return
end
