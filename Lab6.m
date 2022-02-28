diary Lab6.txt

%Devan Patel
%5866
%C3
%Math 250 Lab Assignment #6

rand('seed' , 5866)

%%
%Question 1
u = rvect(2), v = rvect(2)

rank([u, v])

%%
%Question 1(a)

%In the triangle inequality, the norm of a sum of vectors u and v, must be <= to
% the sum of the norm of u with the norm of v. in other words
%||u|| + ||v||>= ||u + v||

%Check:
norm(u)
norm(v)
norm(u+v)
norm(u)+norm(v)

%%
%Question 1(b)

%In the Cauchy-Schwarz inequality, vectors u and v which are in R^n, the
%absolute value of the product of the vectors is less than or equal to the dot product of
%of the norms of u and v

%Check:
abs(u'*v)
norm(u)'*norm(v)

%%
%Question 1(c)

w=((u'*v)/(v'*v))*v
z=u-w
z'*v

%%
%Question 1(d)

P = v*inv(v'*v)*v'

%P is a 2x2 matrix because since V is a 2x1 matrix and v is multiplied by 
%the transpose, it will be a square nxn matrix. P's entries will be divided
%by inv(v'*v) (constant) making P a 2x2 matrix.

%Check:
P*u
w

%%
%Question 2
u1=rvect(3), u2=rvect(3),u3=rvect(3)
u1
u2
u3
rank([u1,u2,u3])

%%
%Question 2(a)

r =0:0.05:1; hold on
plot3(r*u1(1),r*u1(2),r*u1(3), 'r:')
plot3(r*u2(1),r*u2(2),r*u2(3), 'g:')
plot3(r*u3(1),r*u3(2),r*u3(3), 'b:')

%No the vectors are not mutually orthogonal, because the vectors are not
%perpendicular to each other

%%
%Question 2(b)

v1=u1
P1= v1*inv(v1'*v1)*v1', v2=u2-P1*u2
v2
v1'*v2
plot3(r*v2(1),r*v2(2),r*v2(3), 'g-.')
P2 = v2*inv(v2'*v2)*v2', v3= u3-P1*u3-P2*u3
v3'*v1
v3'*v2
plot3(r*v3(1),r*v3(2),r*v3(3), 'b-.')

%%
%Question 2(c)


