function kpn_test ( )

%*****************************************************************************80
%
%% KPN_TEST uses the KPN function for 1D quadrature over (-oo,+oo).
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    10 May 2012
%
%  Author:
%
%    John Burkardt
%
  d = 1;
  exact = hermite_integral ( d );

  fprintf ( 1, '\n' );
  fprintf ( 1, 'KPN_TEST:\n' );
  fprintf ( 1, '  Kronrod-Patterson-Hermite quadrature over (-oo,+oo):\n' );
  fprintf ( 1, '  Exact integral is %g\n', exact );
  fprintf ( 1, '\n' );
  fprintf ( 1, '   Level   Nodes    Estimate  Error\n' );
  fprintf ( 1, '\n' );

  for l = 1 : 5

    n = kpn_order ( l );

    nh = floor ( ( n + 1 ) / 2 );

    [ xh, wh ] = kpn ( l );

    if ( mod ( n, 2 ) == 1 )
      x = [ -xh(nh:-1:2); xh ];
      w = [ wh(nh:-1:2); wh ];
    else
      x = [ -xh(nh:-1:1); xh ];
      w = [ wh(nh:-1:1); wh ];
    end

    fx = hermite_integrand ( d, n, x );
    q = w' * fx;
    e = sqrt ( ( q - exact ).^2 ) / exact;

    fprintf( '  %2d     %6d  %10.5g  %10.5g\n', l, n, q, e )

  end

  return
end
