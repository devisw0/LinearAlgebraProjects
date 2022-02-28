diary lab4.txt

%Devan Patel
%5866
%C3
%Math 250 Lab Assignment #4

rand('seed' , 5866)
A = rmat(3,2)
rank(A)
%%
%Question 1(a)

u = A(:,1), v = A(:,2)

[s,t] = meshgrid((-1:0.1:1), (-1:0.1:1));
X = s*u(1)+t*v(1); Y = s*u(2)+t*v(2); Z = s*u(3)+t*v(3);
surf(X,Y,Z); axis square; colormap hot, hold on

%%
%%Question 1(b)

b = rvect(3)

r = -1:0.05:1;
plot3(r*b(1),r*b(2),r*b(3), '--')

%%
%Question 1(c)

%Yes you can find a vector x within R^2 such that Ax=b whare A is the
%matrix and b is the vector. This is because in the graph, which shows the
%column space of A, it shows all of the different linear combinations of A
%and since vector b intersects it, it shows that you can find a vector x to
%make the statement true.

%%
%Question 1(d)

z = rand(2,1), c = A*z

figure, surf(X,Y,Z); axis square; colormap hot, hold on
plot3(r*c(1), r*c(2), r*c(3), '+')

%%
%Question 2

B = rmat(3,3), rank(B)
A = [B(:,1), B(:,2), 2*B(:,1) + 3*B(:,2), 4*B(:,1) - 5*B(:,2), B(:,3)]
R = rref(A)

%%
%Question 2(a)

%colummns 1,2 and 5 are the pivot columns for A because they are linearly
%independent. So since they are linearly independent and not linear combinations, 
%it means they are pivot columns of A.

%The vectors of [2;3;0] and [4;-5;0] are column vectors 3 and 4
%respectively of matrix R, because they are linearly dependent, which means
%that they are linear combinations of other columns of R. So columns 3 and
%4 are linear combinations of 1 and 2 respectively.

%%
%Question 2(b)

%the free variables in Ax=0 are x3 and x4 since the pivot columns are 1,2 and 5.

%dim(V) is 2, because dim(V) = dim[Null(A)] and V is the nullity of A. Since there are 2 free variables in
%Ax=0, that means the Nullity of A is 2, so dim(V) = 2. 
%%
%Question 2(c)

N = nulbasis(A)
v1 = N(:,1), v2 = N(:,2)

% The third component of v1 is 1, and the fourth and fifth components of v1 are 0.
% The fourth component of v2 is 1, and the third and fifth components of v2 are 0.

%%
%Question 2(d)
s = rand(1), t = rand(1), x = s*v1 + t*v2

%x satisfies Ax=0, because R is the rref(A), so A and R would share
%solutions. x would be a solution because it is a linear combination of v1
%and v2 (columns of N) are in the null space, then that means x satisfies
%Ax=0.

%%
%Question 3(a)

A = rmat(5,3), R = rref(A)

%Yes, there exists a vector b in R^5, so that there is no solution for Ax=b. This is because
%R has more rows than it has pivot columns, making it inconsistent or no
%solution

b = rmat(5,1), xp = partic(A,b)

b = rand(1)*A(:,1) + rand(1)*A(:,2) + rand(1)*A(:,3)

xp = partic(A, b)

A*xp

%This special form of b that guarantees that there is a solution to Ax=b 
% because A*xp = b is a linear combination of the columns of A, which means the system is consistent, 
%and there is a solution

%%
%Question 3(b)

A = rmat(3, 5), R = rref(A)

%The equation Ax=b has a solution for every vector b within R^3, because
%Ax=b has one or more solutions for each b in R^m, m is the number of rows.
%Since the number of rows are the same, there is at least one solution.

b = rmat(3,1), xp = partic(A, b)

%The entries of row 4 and 5 of xp are zero, because they are free
%variables, because there are 5 variables and 3 pivot columns in the rref.

%check
A*xp

%%
%Question 4(a)

N = nulbasis(A)

v1 = N(:,1), v2 = N(:,2)

x = xp + rand(1)*v1 + rand(1)*v2

%check:
A*x

%%
%Question 4(b)

x = xp + -9*v1 + 8*v2

%check:
A*x

%%
%Question 5(a)

A = [0.30, 0; 0.14, 0; 0.56, 1] %values from problem

B = [0.5, 0, 0; 0.5, 1, 0.6; 0, 0, 0.4]

C = [1,0.3,0;0,0.2,0;0,0.35,0.7;0,0.15,0.3]

M = C*B*A

x = 1000*rvect(2), y = A*x, z = B*y, w = C*z


[1 1]*x, [1 1 1]*y, [1 1 1]*z, [1 1 1 1]*w


%This shows that each of the answers is supposed to be the total cars that
%are entering or exiting the lanes. So given [1 1]*x is equal to the amount
%of cars that are passing through the x1 and x2 paths. While [1 1 1]*y is
%the number of cars that are traveling on the y path. [1 1 1]*z represents
%the total cars traveling on the z path and [1 1 1 1]*w represents the cars
%traveling on the w path respectively. The number of cars traveling through
%each of the paths is the same, because the answer represents the total cars
%in the system, on any of the paths. The sum of the cars on all the
%different paths will be the same as the total cars that entered the system
%initially.

%%
%Question 5(b)

y = [270 126 704]'

x = partic(A,y)

A*x

%yes, the entering traffic flow vector x is uniquely determined. This is
%because Ax=y is an overdetermined system matrix, it means that there will
%always be vectors y that do not have a solution to x. The system is
%overdetermined, because there is 3 equations, while only 2 of them contain x. 

%%
%Question 5(c)

w = [100 200 300 400]'

rref([M w])

%w cannot be the traffic vector, because [M w] is inconsistent, and w=MX so
%there would be no solution where this could be possible. 

x = partic(M, w)