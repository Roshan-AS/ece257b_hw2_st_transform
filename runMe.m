%% This code calls the other three transforms and plots all the required figures

% Define the given parameters-locations
lambda = 3e8/5e9;
s = lambda/2;
BW = 100e6;
n_ant = 4;
n_fft = 64;

AP = [0,0; 0,s;0,2*s;0,3*s];

r1 = 5;
r2 = 5.5m;
theta1 = 10*pi/180;
theta2 = -20*pi/180;

%Define user1 and user 2 locations?
user1 =
user2 = 

% Estimate all the distances from the users to all the antennas
d1 =  % is a 1x4 vectors (4 distances of user1 from each antenna)
d2 =  % is a 1x4 vectors (4 distances of user2 from each antenna)

%% Use d1 and d2 to define write the channel estimate
% Assume no Multipath, no CFO, no SFO, no STO, no phase errors. Ideal World

H1 =  % N_FFTxN_ANT channel matrix for user1
H2 =  % N_FFTxN_ANT channel matrix for user2
%% Now call the three function
h1_space = compute_multipath_profile_space(H1,..);
h2_space = compute_multipath_profile_space(H2,..);

h1_time = compute_multipath_profile_time(H1,..);
h2_time = compute_multipath_profile_time(H2,..);

h1_st = compute_multipath_profile_space_time(H1,..);
h1_st = compute_multipath_profile_space_time(H2,..);

%% Plot all the results


%% BW = 1GHz and N_ant = 4 redo the above

%% BW = 100MHz and N_ant = 10 redo the above
AP = [0,0; 0,s;0,2*s;0,3*s;0,4*s; 0,5*s;0,6*s;0,7*s;0,8*s; 0,9*s;];

