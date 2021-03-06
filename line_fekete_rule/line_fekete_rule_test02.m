function line_fekete_rule_test02 ( m )

%*****************************************************************************80
%
%% LINE_FEKETE_RULE_TEST02 seeks Fekete points in [-1,+1].
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    24 March 2014
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    L Bos, N Levenberg,
%    On the calculation of approximate Fekete points: the univariate case,
%    Electronic Transactions on Numerical Analysis,
%    Volume 30, pages 377-397, 2008.
%
%  Parameters:
%
%    Input, integer M, the dimension of the polynomial space.
%
  if ( nargin < 1 )
    m = 5;
  end
  n = 1000;
  a = -1.0;
  b = +1.0;
  x = linspace ( a, b, n );

  fprintf ( 1, '\n' );
  fprintf ( 1, 'LINE_FEKETE_RULE_TEST02:\n' );
  fprintf ( 1, '  Seek Fekete points in [%g,%g]\n', a, b );
  fprintf ( 1, '  using %d equally spaced sample points\n', n );
  fprintf ( 1, '  for polynomials of degree M = %d\n', m );
  fprintf ( 1, '  with the Chebyshev basis\n' );
  fprintf ( 1, '  and weight 1/sqrt(1-x^2).\n' );

  [ nf, xf, wf, vf ] = line_fekete_chebyshev ( m, a, b, n, x );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  NF = %d\n', nf );
  r8vec_print ( nf, xf, '  Estimated Fekete points XF:' );

  yf = ones ( size ( xf ) );
  plot ( xf, yf, '*' );
  title ( 'Estimated Fekete points' );
  grid on
  filename = 'line_fekete_rule_test02.png';
  print ( '-dpng', filename );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Saved plotfile as "%s"\n', filename );

  wf_sum = sum ( wf(1:nf) );
  fprintf ( 1, '\n' );
  fprintf ( 1, '  Sum(WF) = %g\n', wf_sum );

  return
end

