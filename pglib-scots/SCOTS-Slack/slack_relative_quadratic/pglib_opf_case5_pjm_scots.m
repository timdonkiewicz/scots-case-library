%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    This is a modified SCOTS-feasible instance adapted from the   %%%%%
%%%%                                :                                 %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v21.07     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%               Benchmark Group - Typical Operations               %%%%%
%%%%                         29 - July - 2021                         %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   CASE5  Power flow data for modified 5 bus, 5 gen case based on PJM 5-bus system
%   Please see CASEFORMAT for details on the case file format.
%
%   Based on data from ...
%     F.Li and R.Bo, "Small Test Systems for Power System Economic Studies",
%     Proceedings of the 2010 IEEE Power & Energy Society General Meeting
%
%   Created by Rui Bo in 2006, modified in 2010, 2014.
%
%   Copyright (c) 2010 by The Institute of Electrical and Electronics Engineers (IEEE)
%   Licensed under the Creative Commons Attribution 4.0
%   International license, http://creativecommons.org/licenses/by/4.0/
%
%   Contact M.E. Brennan (me.brennan@ieee.org) for inquries on further reuse of
%   this dataset.
%
%% MATPOWER Case Format : Version 2
function mpc = pglib_opf_case5_pjm
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100.0;
%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	2	0.0	0.0	0.0	0.0	1	1.0	0.0	230.0	1	1.1	0.9				
	2	1	300.0	98.61	0.0	0.0	1	1.0	0.0	230.0	1	1.1	0.9				
	3	2	300.0	98.61	0.0	0.0	1	1.0	0.0	230.0	1	1.1	0.9				
	4	3	400.0	131.47	0.0	0.0	1	1.0	0.0	230.0	1	1.1	0.9				
	5	2	0.0	0.0	0.0	0.0	1	1.0	0.0	230.0	1	1.1	0.9				
];

%%	 generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	20.0	0.0	30.0	-30.0	1.0	100.0	1	40.021	0.0															
	1	85.0	0.0	127.5	-127.5	1.0	100.0	1	170.372	0.0															
	3	260.0	0.0	390.0	-390.0	1.0	100.0	1	520.009	0.0															
	4	100.0	0.0	150.0	-150.0	1.0	100.0	1	202.209	0.0															
	5	300.0	0.0	450.0	-450.0	1.0	100.0	1	600.013	0.0															
];

%%	 branch data
%    f_bus    t_bus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	2	0.00281	0.0281	0.00712	400.008	400.0	400.0	0	0	1	-30.0	30.0								
	1	4	0.00304	0.0304	0.00658	426.008	426.0	426.0	0	0	1	-30.0	30.0								
	1	5	0.00064	0.0064	0.03126	426.011	426.0	426.0	0	0	1	-30.0	30.0								
	2	3	0.00108	0.0108	0.01852	426.008	426.0	426.0	0	0	1	-30.0	30.0								
	3	4	0.00297	0.0297	0.00674	426.005	426.0	426.0	0	0	1	-30.0	30.0								
	4	5	0.00297	0.0297	0.00674	246.619	240.0	240.0	0	0	1	-30.0	30.0								
];

%%-----	  OPF Data  -----%%
%% cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0.0	0.0	2	14.0	0.0
	2	0.0	0.0	2	15.0	0.0
	2	0.0	0.0	2	30.0	0.0
	2	0.0	0.0	2	40.0	0.0
	2	0.0	0.0	2	10.0	0.0
];

%column_names%	 col_1 col_2 
mpc.areas = {
	1	4
};

	 