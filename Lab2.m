diary lab2.txt

%Devan Patel
%5866
%C3
%Math 250 Lab 2

rand('seed' , 5866)

%%
%Question1a

A = rmat(3,5), rank(A(:,1:3))

rref(A)

b = rvect(3), R = rref([A b])

S = R(:,1:5)

rref(A)

%(i) the first 3 columns
%(ii) Rank R = 3, Rank A = 3
%(iii) The nullity of A is 2, and X4,X5 are the free variables
%(iv) The equation has a solution because there are no zero rows
%so that it would be inconsistent.

%%
%Question1b

c = R(:,6), x = [c;0;0]

%(i)
A*x-b

S*x-c

%(ii) Ax -b = 0 so, first, x is found by finding the values for the basic variables in
%rref and setting the free variables equal to zero. By doing this,I got 
%c. so, S is in rref and x will always be the same, so Sx = c and Ax=b 
%where x is the same. Because of the correspondence principle, sx=c is
%rref(A)x = c, since sx-c=c-c=0.

%%
%Question 1c

u = [-S(:,4); 1 ; 0], v = [-S(:,5);0;1]

S*u, A*u, S*v, A*v
%In Matrix A there are 5 columns, with 3 of them being pivot columns. Where
%x4 and x5 will be the free variables in the general solution. The general soltion
%is Ax = 0, and is x4(u) + x5(v) where u and v are vectors.  

s = rand(1), t =rand(1), y = s*u + t*v

A*y

%One of the properties to ensure Ay = 0 is that since A(su) = s(Au), then
% A(tv) must equal t(Av). Since Au is 0 and so is Av, it means that A(su)
% is 0, thus making A(tu) equal to 0. 
%Second, since A(u+v) = Au+Av then A(su)+A(tv) =  A((su)+(tv)) which then
%means that A((su)+(tv)) = 0. So this would make Ay = 0.

%%
%Question 1d

z = x + y

%the property that implies z = x+y is A(x+y) = Ax+Ay = Az 

%confirmation:


A*z-b

%%
%Question 2a

u1 = rvect(3)
u2 = rvect(3)
u3 = rvect(3)
u4 = rvect(3)

A = [u1 u2 u3], rref(A)

%(i) 0 free variables
%(ii) linearly independent, because there's 3 columns and all are pivot columns 
%which means in order to have the solution be 0 where x is 0 in Ax=0.
%%
%Question 2b

B = [u1 u2 u3 u4], rref(B)

%(i) 1 free variable
%(ii) linearly dependent, there are 4 columns, 3 of which are pivot columns
%so that would mean it has a free variable making it linearly dependent,
%x is not 0 in Bx=0

%%
%Question2c

v = rand(1)*u1 + rand(1)*u2

%It is linear independent since v = c1u1+c2u2. To find linear dependence,
%you have to find what value c2,c2,ck would make v=0. In this case it is
%possible for c1, c2 etc to be non zero to get this result since c is
%randomized

%%
A = rmat(2,3), B = rmat(3, 4), C = rmat(4,3), v = rvect(4)

%%Question 3a
u = B*v, A*u, D=A*B, D*v

%verified

%%
%Question 3b

A = [0 1;0 0]
B = [0 0; 1 0]
C = [0 1; 1 0]

%(i)
A*B
B*A

%

A*A

(2*A*B) + (B*B)

%no AB is not equal to BA. Neither is A^2 = 2AB +B^2

%(ii)
A^2

%This shows that if A was a number then A*A would be equal to A^2.
%However, A^2 is not equal to A*A, as seen in the results since A is a matrix.

%(iii)
A*C
A*B

%The calculations of AC & AB are shown above
%If A,B,C were all numbers such that A was not 0, and if AC =AB
%then I believe that there could be many different combinations of AC and
%AB, such that AC = AB. Even though A cannot be 0, there are endless
%possibilities, if A,B,C are are numbers and not matrices.

%%
%Question 4

A = [0,0,0,1,0,1;1,0,1,1,0,0;0,1,0,1,0,0;1,0,1,0,0,0;1,1,1,0,0,1;0,0,1,1,0,0]

%(ii)
%Yes, person 1 cant receive messages from persons 3 and 6 through only
%one 1 step. Person 5 cannot receive messages at all. This is determined b
%looking at above matrix which is composed of 6 rows and 6 columns. Each 
%index in the array (a_ij) shows i, the recipient of the message, and j the
%sender.The values 0 means the message cannot be received, while 1 would
%mean it can be received. So looking at the matrix there are many different
%combos of people who cannot receive messages from others.


%(iii)
%Person 1 can send a message to Person 4 in 7 ways in 4 stages
%this is because



