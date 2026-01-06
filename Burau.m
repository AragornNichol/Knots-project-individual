%function for the Burau representation
%Braid in form [A1, A2, A3, etc.] negative numbers for inverse
function burauMat = Burau(braidword)
    syms t
    n = max(abs(braidword))+1;
    burauMat = eye(n);
    for wordIndex = 1:length(braidword)
        currentA = braidword(wordIndex);
        currentMat = sym(eye(n));
        i = abs(currentA);
        currentMat(i:i+1,i:i+1) = [1-t, t; 1, 0];
        if currentA < 0
            currentMat = inv(currentMat);
        end
        burauMat = burauMat*currentMat;
    end
    burauMat=simplify(burauMat);
end