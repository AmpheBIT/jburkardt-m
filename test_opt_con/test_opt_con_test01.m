function test_opt_con_test01 ( )

%*****************************************************************************80
%
%% TEST_OPT_CON_TEST01 simply prints the title of each problem.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    16 February 2012
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST_OPT_CON_TEST01\n' );
  fprintf ( 1, '  For each problem, print the title.\n' );
%
%  Get the number of problems.
%
  problem_num = p00_problem_num ( );

  fprintf ( 1, '\n' );
  fprintf ( 1, '  Problem     Title\n' );
  fprintf ( 1, '\n' );

  for problem = 1 : problem_num

    title = p00_title ( problem );

    fprintf ( 1, '  %6d  %s\n', problem, title );

  end

  return
end
