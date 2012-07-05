#############################################################################
##
## holonomy.gd           SgpDec package
##
## Copyright (C)  Attila Egri-Nagy, Chrystopher L. Nehaniv, James D. Mitchell
##
## 2008-2012
##
## A hierarchical decomposition: Holonomy coordinatization of semigroups.
##

DeclareOperation("HolonomyDecomposition",[IsTransformationSemigroup]);
DeclareGlobalFunction("SkeletonOf");
DeclareGlobalFunction("GroupComponentsOnDepth");
DeclareGlobalFunction("Coordinates");
DeclareGlobalFunction("CoverChain");
DeclareGlobalFunction("ActionInfoOnLevel");
DeclareGlobalFunction("ChangeCoveredSet");
DeclareGlobalFunction("DotHolonomy");
DeclareGlobalFunction("SplashHolonomy");

#TYPE INFO
DeclareCategory("IsHolonomyDecomposition", IsHierarchicalDecomposition);

DeclareRepresentation(
        "IsHolonomyDecompositionRep",
        IsHierarchicalDecompositionRep,
        [ "skeleton", #reference to the full skeleton
          #the followings are here for convenient access for each level
          "reps", #the list of representative sets,
          #whose covering sets are the states on this level
          "coordinates", #the tile sets of the representatives
          "flat_coordinates", # all reptile sets on one level in one list
          "cascadedstruct", #the cascaded structure built from the components
          "groupcomponents" #from permutation-reset components, it may not be
          #straightforward what the group components are
          ] );

HolonomyDecompositionType  := NewType(
    NewFamily("HolonomyDecompositionTypeFamily",IsHolonomyDecomposition),
    IsHolonomyDecomposition and IsHolonomyDecompositionRep);

DeclareInfoClass("HolonomyInfoClass");
