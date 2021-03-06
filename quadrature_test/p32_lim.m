function [ a, b ] = p32_lim ( dim_num )

%*****************************************************************************80
%
%% P32_LIM returns the integration limits for problem 32.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    02 June 2007
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer DIM_NUM, the dimension of the argument.
%
%    Output, real A(DIM_NUM), B(DIM_NUM), the lower and upper
%    limits of integration.
%
  a(1:dim_num) = 0.0;
  b(1:dim_num) = 1.0;

  return
end
