function b = sptsl ( n, d, e, b )

%*****************************************************************************80
%
%% SPTSL solves a positive definite tridiagonal linear system.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    09 November 2006
%
%  Author:
%
%    MATLAB version by John Burkardt.
%
%  Reference:
%
%    Dongarra, Moler, Bunch and Stewart,
%    LINPACK User's Guide,
%    SIAM, (Society for Industrial and Applied Mathematics),
%    3600 University City Science Center,
%    Philadelphia, PA, 19104-2688.
%    ISBN 0-89871-172-X
%
%  Parameters:
%
%    Input, integer N, the order of the matrix.
%
%    Input, real D(N), the diagonal of the tridiagonal matrix.
%
%    Input, E(N), the offdiagonal of the tridiagonal matrix in
%    entries E(1:N-1).
%
%    Input, real B(N), the right hand side.
%
%    Output, real B(N), the solution.
%

%
%  Check for 1 x 1 case.
%
  if ( n == 1 )
    b(1) = b(1) / d(1);
    return
  end

  nm1d2 = floor ( ( n - 1 ) / 2 );

  if ( 2 < n )

    kbm1 = n - 1;
%
%  Zero top half of subdiagonal and bottom half of superdiagonal.
%
    for k = 1 : nm1d2
      t1 = e(k) / d(k);
      d(k+1) = d(k+1) - t1 * e(k);
      b(k+1) = b(k+1) - t1 * b(k);
      t2 = e(kbm1) / d(kbm1+1);
      d(kbm1) = d(kbm1) - t2 * e(kbm1);
      b(kbm1) = b(kbm1) - t2 * b(kbm1+1);
      kbm1 = kbm1 - 1;
    end

  end

  kp1 = nm1d2 + 1;
%
%  Clean up for possible 2 x 2 block at center.
%
  if ( mod ( n, 2 ) == 0 )
    t1 = e(kp1) / d(kp1);
    d(kp1+1) = d(kp1+1) - t1 * e(kp1);
    b(kp1+1) = b(kp1+1) - t1 * b(kp1);
    kp1 = kp1 + 1;
  end
%
%  Back solve starting at the center, going towards the top and bottom.
%
  b(kp1) = b(kp1) / d(kp1);

  if ( 2 < n )

    k = kp1 - 1;
    ke = kp1 + nm1d2 - 1;

    for kf = kp1 : ke
      b(k) = ( b(k) - e(k) * b(k+1) ) / d(k);
      b(kf+1) = ( b(kf+1) - e(kf) * b(kf) ) / d(kf+1);
      k = k - 1;
    end

  end

  if ( mod ( n, 2 ) == 0 )
    b(1) = ( b(1) - e(1) * b(2) ) / d(1);
  end

  return
end

