function [xx,tt] = note(A,omega,phi,dur)
ff=omega/2*pi
tt = 0:1/(20*ff):dur; 
xx = A*sin(2*pi*ff*tt+(phi));
plot(tt,xx)