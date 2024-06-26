#############################################################################
##
## cascade.gd           SgpDec package
##
## Copyright (C) 2008-2024
##
## Attila Egri-Nagy, Chrystopher L. Nehaniv, James D. Mitchell
##
## Cascade transformations and permutations.
##

DeclareCategory("IsCascade", IsMultiplicativeElementWithOne
        and IsAssociativeElement and IsAttributeStoringRep
        and IsMultiplicativeElementWithInverse
        and IsList); #to make it hashable
DeclareCategoryCollections("IsCascade");

DeclareCategory("IsPermCascade", IsCascade);
DeclareCategoryCollections("IsPermCascade");
DeclareCategory("IsTransCascade", IsCascade);
DeclareCategoryCollections("IsTransCascade");

BindGlobal("PermCascadeFamily",
        NewFamily("PermCascadeFamily",
                IsPermCascade, CanEasilySortElements, CanEasilySortElements));

BindGlobal("TransCascadeFamily",
        NewFamily("TransCascadeFamily",
                IsTransCascade, CanEasilySortElements, CanEasilySortElements));

BindGlobal("PermCascadeType", NewType(PermCascadeFamily, IsPermCascade));

BindGlobal("TransCascadeType", NewType(TransCascadeFamily, IsTransCascade));

#constructors
#DeclareGlobalFunction("CascadeNC"); # TODO doing an NC version later
DeclareGlobalFunction("CreateCascade");
DeclareGlobalFunction("CreateComponentDomains");
DeclareGlobalFunction("IdentityCascade");
DeclareGlobalFunction("RandomCascade");
DeclareOperation("AsCascade", [IsTransformation, IsDenseList]);

DeclareOperation("Cascade", [IsList, IsList, IsType]);

#accessing cascade internals
DeclareAttribute("DomainOf", IsCascade);
DeclareAttribute("DependencyFunctionsOf", IsCascade);
DeclareAttribute("NrComponents",IsCascade);
DeclareAttribute("NrDependencies",IsCascade);
DeclareAttribute("ComponentDomains",IsCascade);
DeclareAttribute("DependencyDomainsOf",IsCascade);
DeclareAttribute("NrDependencyFuncArgs", IsCascade);
DeclareAttribute("RestrictedDomain", IsCascade);
DeclareGlobalFunction("DependenciesOfCascade");

#cascade multiplication
DeclareGlobalFunction("CascadeComposition");

#the action on coordinates
DeclareGlobalFunction("OnCoordinates");

#drawing
DeclareGlobalFunction("DotCascade");
DeclareGlobalFunction("DotCascadeAction");
