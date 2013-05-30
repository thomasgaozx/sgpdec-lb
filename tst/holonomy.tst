# testing holonomy  decomposition
gap> START_TEST("Sgpdec package: holonomy.tst");
gap> LoadPackage("sgpdec", false);;
gap> SemigroupsStartTest();
gap> hcs := HolonomyCascadeSemigroup(FullTransformationSemigroup(3));
<cascade semigroup with 4 generators, 2 levels with (3, 2) pts>
gap> hom := HomomorphismTransformationSemigroup(hcs);
MappingByFunction( <cascade semigroup with 4 generators, 2 levels with (3, 2) \
pts>, <transformation monoid on 3 pts with 3 generators>
 , function( c ) ... end )
gap> Size(Range(hom));
27
gap> hl := HolonomyLifting(FullTransformationSemigroup(3));
MappingByFunction( <full transformation semigroup on 3 pts>, <cascade semigrou\
p with 4 generators, 2 levels with (3, 2) pts>, function( t ) ... end )
gap> Size(Range(hl));
30
gap> S := Semigroup([
> Transformation([1,2,3,1,1,1]),
> Transformation([4,4,4,5,4,6]),
> Transformation([4,4,4,5,6,4]),
> Transformation([4,4,4,4,5,5]),
> Transformation([4,4,4,1,2,3]),
> Transformation([2,3,1,4,4,4])]);;
gap> hcs := HolonomyCascadeSemigroup(S);
<cascade semigroup with 6 generators, 5 levels with (2, 4, 5, 5, 2) pts>
gap> hom := HomomorphismTransformationSemigroup(hcs);
MappingByFunction( <cascade semigroup with 6 generators, 5 levels with (2, 4, \
5, 5, 2) pts>, <transformation semigroup on 6 pts with 6 generators>
 , function( c ) ... end )
gap> AsSortedList(S) = AsSortedList(Range(hom));
true

#
gap> SemigroupsStopTest();
gap> STOP_TEST( "Sgpdec package: holonomy.tst", 10000);
