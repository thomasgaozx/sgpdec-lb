
InstallGlobalFunction(IsSubsetState, function(X1, X2)
    local xg1, xg2, i, res1, res2;

    xg1 := X1[1];
    xg2 := X2[1];
    res1 := true;
    res2 := true;

    for i in [1..Size(xg1)] do
        if xg2[i] and not xg1[i] then
            res1 := false;
        fi;
    od;

    for i in [1..Size(xg2)] do
        if xg1[i] and not xg2[i] then
            res2 := false;
        fi;
    od;

    return res1 or res2;
end
);

# InstallGlobalFunction(GiveIdempotents, function(X1, X2, TransSemigroup)
#     local g1, g2, xg1, xg2, e1, e2,i, j;

#     if IsSubsetState(X1, X2) = false then 
#         return false;
#     fi;

#     xg1 := X1[1];
#     xg2 := X2[1];
#     g1 := X1[2];
#     g2 := X2[2];

#     for i in [1..Size(xg1)] do
#         if xg1[i] = true then
#             for j in [1..Size(g1)] do
#                 if 
# end);