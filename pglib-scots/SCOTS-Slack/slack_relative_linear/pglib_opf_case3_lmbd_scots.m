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
%   The semidefinite relaxation of the OPF problem successfully solves 
%   this network with a value of 60 MVA for the line-flow limit on the line from
%   bus 2 to bus 3. The semidefinite relaxation fails to give a physically
%   meaningful solution to this network with a value of 50 MVA for the line-flow
%   limit on this line. See the following publication for further details.
%
%   Lesieutre, B.C. & Molzahn, D.K. & Borden, AR. & Demarco, C.L., 
%   "Examining the Limits of the Application of Semidefinite Programming to Power Flow Problems",
%   49th Annual Allerton Conference on Communication, Control, and Computing (Allerton),  
%   September, 2011, pp. 1492-1499
%
%   opt objective value:  5812.64 $/hr
%
%    Bus      Voltage          Generation             Load          Lambda($/MVA-hr)
%     #   Mag(pu) Ang(deg)   P (MW)   Q (MVAr)   P (MW)   Q (MVAr)     P        Q   
%   ----- ------- --------  --------  --------  --------  --------  -------  -------
%       1  1.100    0.000*   148.07     54.70    110.00     40.00    37.575     -
%       2  0.926    7.259    170.01     -8.79    110.00     40.00    30.101     -
%       3  0.900  -17.267      0.00     -4.84     95.00     50.00    45.537     -
%                           --------  --------  --------  --------
%                  Total:    318.07     41.06    315.00    130.00
%
%   Copyright (c) 2011 by The Institute of Electrical and Electronics Engineers (IEEE)
%   Licensed under the Creative Commons Attribution 4.0
%   International license, http://creativecommons.org/licenses/by/4.0/
%
%   Contact M.E. Brennan (me.brennan@ieee.org) for inquries on further reuse of
%   this dataset.
%
%% MATPOWER Case Format : Version 2
function mpc = pglib_opf_case3_lmbd
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100.0;
%% bus data
%    bus_i    type    Pd    Qd    Gs    Bs    area    Vm    Va    baseKV    zone    Vmax    Vmin
mpc.bus = [
	1	3	110.0	40.0	0.0	0.0	1	1.0	0.0	240.0	1	1.1	0.9				
	2	2	110.0	40.0	0.0	0.0	1	1.0	0.0	240.0	1	1.1	0.9				
	3	2	95.0	50.0	0.0	0.0	1	1.0	0.0	240.0	1	1.1	0.9				
];

%%	 generator data
%    bus    Pg    Qg    Qmax    Qmin    Vg    mBase    status    Pmax    Pmin    Pc1    Pc2    Qc1min    Qc1max    Qc2min    Qc2max    ramp_agc    ramp_10    ramp_30    ramp_q    apf
mpc.gen = [
	1	1000.0	0.0	1000.0	-1000.0	1.0	100.0	1	2000.0	0.0															
	2	1000.0	0.0	1000.0	-1000.0	1.0	100.0	1	2000.0	0.0															
	3	0.0	0.0	1000.0	-1000.0	1.0	100.0	1	0.0	0.0															
];

%%	 branch data
%    f_bus    t_bus    r    x    b    rateA    rateB    rateC    ratio    angle    status    angmin    angmax
mpc.branch = [
	1	3	0.065	0.62	0.45	9000.0	9000.0	9000.0	0	0	1	-30.0	40.36767								
	3	2	0.025	0.75	0.7	107.233	50.0	50.0	0	0	1	-46.13163	30.0								
	1	2	0.042	0.9	0.3	9000.0	9000.0	9000.0	0	0	1	-50.52507	47.85394								
];

%%-----	  OPF Data  -----%%
%% cost data
%    1    startup    shutdown    n    x1    y1    ...    xn    yn
%    2    startup    shutdown    n    c(n-1)    ...    c0
mpc.gencost = [
	2	0.0	0.0	3	0.11	5.0	0.0
	2	0.0	0.0	3	0.085	1.2	0.0
	2	0.0	0.0	3	0.0	0.0	0.0
];

	 