%Function to calculate reduced Burau form
%Used for Alexander polynomial
function reducedBurau = rBurau(braidword)
    syms t
    n = max(abs(braidword))+1;
    if n == 2
        reducedBurau = 1;
        for j = 1:length(braidword)
            %only options are 1 and -1
            if braidword(j) > 0
                reducedBurau = reducedBurau * (-t);
            else %must be -1
                reducedBurau = reducedBurau * (-1/t);
            end
        end
    else % n >= 3
        reducedBurau = eye(n-1);
        for j = 1:length(braidword)
            i = abs(braidword(j));
            %check for max and min of i (i = 1, n-1)
            if i == 1
                currentMat = sym(eye(n-1));
                currentMat(1,1:2) = [-t, 1];
            elseif i == n-1
                currentMat = sym(eye(n-1));
                currentMat(i,i-1:i) = [t, -t];
            else % otherwise
                currentMat = sym(eye(n-1));
                currentMat(i,i-1:i+1) = [t,-t,1];
            end
            %check for inverses
            if braidword(j) < 0
                currentMat = inv(currentMat);
            end
            reducedBurau = reducedBurau*currentMat;
        end
    end
end