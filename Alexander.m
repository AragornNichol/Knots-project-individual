%Function to calculate the Alexander polynomial of a braid's closure
%Takes reduced burau as input
function AlexPoly = Alexander(rBurau)
    syms t
    n = length(rBurau)+1;
    AlexPoly = simplify(((1-t)/(1-t^n))*det(eye(n-1)-rBurau));
end