diary lab3.txt

%Devan Patel
%5866
%C3
%Math 250 Lab Assignment #3

rand('seed' , 5866)

%%
%Question 1(a)

A = rand(3), A(1,1), det(A(1:2,1:2)), det(A)

U=A

col1

U = L1*U

%The row operations that changed the old that change the old 
%value of U into to new value of U are as follows:
%Row 2 becoming the identity matrix minus (U(2,1)/U(1,1)) and then
%which is multiplied by row 1, which would make it 0 for the U(2,1)
% The other is row 3, which has the same elementary operation performed
%on it as row 2, except it is subtracted by (U(3,1)/U(1,1), which is 
%multiplied by row 1. When doing this, you will get 0 for the U(3,1)
%(these operations were those specified when creating the col1 T-file)

%%
%Question 1(b)

col2

U = L2*U

U = L2*L1*A

%Similarly to Question 1a, the row operation(s) which are done can be
%seen in the col2 file.
%The row operations performed are as follows
% Row 3 becomes row 3, subtracted by row 2 times U(3,2)/U(2,2).
%With this row operation, there will be a zero for U(3,2)

%%
%Question 1(c)

inv(L1), inv(L2), L = inv(L1)*inv(L2)

A = L*U

%%
%Question 2(a)

%inverse formula using L1 and L2:
%since inv(L) = L2*L1, and L = inv(L1)*inv(L2), so if you take the inverse
%again, you will get L^-1 = ((L1^-1) * (L2^-1))^-1. which is then equal to (L2^-1)^-1 * (L1^-1)^-1
%which then equals back to L2*L1 = L^-1.

inv(L), inv(U)

%%
%Question 2(b)

b = rvect(3)

c = inv(L)*b

x = inv(U)*c

A*x


%% Question 3
A = rand(500) ; b = rand(500,1); [L U] = lu(A);


%% 
%Question 3(a)

tic; R = rref([A b]); y = R(:,501); toc


%%
%Question 3(b)

tic; c = inv(L)*b; x = inv(U)*c; toc

norm(x - y)


%%
%Question 3(c)

%(i) when n = 500 the runtime is 500/3, since the ratio between
%Gaussian elimination and the LU method would be (2c(n^3))/(2c(n^2))
%resulting in n/3, and since n = 500, it would be 500/3


%(ii)
rreftime/lutime


%%
%Question 4(a)

a = rmat(4,4)

c = cofactor(a)

a(1,1)*c(1,1) + a(1,2)*c(1,2) + a(1,3)*c(1,3) + a(1,4)*c(1,4)

a(2,1)*c(2,1) + a(2,2)*c(2,2) + a(2,3)*c(2,3) + a(2,4)*c(2,4)

a(1,3)*c(1,3) + a(2,3)*c(2,3) + a(3,3)*c(3,3) + a(4,3)*c(4,3)

a(1,4)*c(1,4) + a(2,4)*c(2,4) + a(3,4)*c(3,4) + a(4,4)*c(4,4)


%Why all sums give the same number

%Theorem 3.1: since in theorem it states that the determinant of 
%an nxn matrix can be found by using cofactor expansion along any of the
%rows of the matrix. So, row1 and row2 are equal to each other since each
%row represents the cofactor expansion along rows 1 and 2 respectively

%Theorem: 3.4: In the theorem, it states that the determinant of
%the transpose of a matrix would be equal to the original matrix's determinant. So, since the columns
%of the matrix are same number of rows in the nxn matrix, it will also be
%an nxn matric when transposed. SO, because its always an nxn matrix, the
%cofactor expansion along a column is the same as the cofactor expansion
%along the corresponding row of the transpose of the original matrix.

%%
%Question 4(b)

A = rmat(5,5), U = triu(A)

A(1,1)*A(2,2)*A(3,3)*A(4,4)*A(5,5)

U(1,1)*U(2,2)*U(3,3)*U(4,4)*U(5,5)

%det(A): No, you can't obtain det(A) by doing multiplications as seen the above
%calculations

%det(U): Yes, you can since U is an  upper triangular matrix, so its determinant 
%would be the products of the diagonal entries of U

%%
%Question 4(c)

A = rmat(5,5)

B = A; B(2,:) = A(1,:); B(1,:) = A(2,:)

%(i)
%The relationship between det(A) and det(B) is that if you get B, by
%switching two rows of A, then det(B) = -det(A) since this is what is being
%done from A to get B, this is true.

%Check:
det(A)
det(B)



C = A; C(2,:) = A(2,:) + 10*A(1,:)

%(ii)

%the relationship between det(A) and det(C) is that if you get matrix C,
%from A by replacing one of its row of A by itself, plus another row, but
%multiplied (by 10 in this case) then det(A) = det(C)

%check:
det(A)
det(C)


D = A; D(1,:) = 10*A(1,:)

%(iii)
%the relation between det(A),det(D) and det(10*A):
%we know that det(D) = 10*det(A) and det(A) = (1/10)*det(D)
%if you get a matrix D from by multiplying a row by an integer of original matrix A, n then the determinant of
%the new matrix, D is equal to n*det(A).  so det(D) = n*det(A)

%Also det(10*A) means that each row is multiplied by 10 making it 100000 
%times det(A).

%Check:
det(A)
det(D)
det(10*A)


%%
%Question 4(d)
A = rmat(5,5)

A(1,1)=0; A(2,1) = 0

[P, L, U, sign] = splu(A)

%Check:
P*A

L*U

%(i)
%det(P) = -1, because P is the identity matrix with an interchange, and
%since we have to interchange row 1, there is a zero-entry for A(1,1), which
%then makes it possible for LU decomposition. Since there is only 1
%interchange, (ood) it would make det(P) = -1.

%check:
det(P)

%(ii)
%det(L) = 1, because it is a lower triangular matrix and has 1's in the
%entries that are diagonal. Since the  determinant for a lower triangular 
%matrix is the product of its diagonal entries which would be 1*1*1*1*1*1 = 1.

%check:
det(L)

%(iii)
%The relationship between det(A) and det(U) is that det(A) = -det(U) and
%det(U) = -det(A). This is because to get matrix U from A, you have to
%interchange one row from A. Since only one row is interchanged, that means
%they are opposites since each is a negative of the other.

%check
det(A)
det(U)

%%
%%Question 5

H = house; plot2d(H), hold on


%%
%Question 5(a)

t = pi/6; Q = [cos(t), -sin(t); sin(t), cos(t)]

plot2d(Q*H)

%(i)
%the house was rotated counterclockwise by pi/6 rads

%(ii)
%det(Q) = 1
%this tells us the area has not changed at all so far and remains 1

t = -pi/3; Q = [cos(t), -sin(t); sin(t), cos(t)]

plot2d(Q*H)

%(i)
%the house rotated clockwise pi/6 radians from its original position

%(ii)
%det(Q) = 1
%this tells us the area of the house has still not changed

%%
%Question 5(b)

H = house; plot2d(H), hold on
r = .9; D = [r, 0; 0, 1/r ]
plot2d(D*H)
hold on

%(i) the house became more narrow
det(D)


%The determinant of D is 1, so the area of the house did not change


r = .8; D = [r, 0; 0, 1/r ]


plot2d(D*H)
hold off

%(i) The house became even more narrow when r became 0.8
%(ii) The determinant of D is still 1, so area of the house did not change


%%
%Question 5(c)

