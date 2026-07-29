import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

structure DichotomyTrichotomyObject where
  solutionSpaceDichotomy : Prop
  solutionSpaceTrichotomy : Prop
  solutionClassification : solutionSpaceDichotomy ∨ solutionSpaceTrichotomy
  regularityConditions : Prop
  boundaryConditions : Prop

structure DichotomyTrichotomyAdmissibleClass extends AdmissibleClass where
  object : DichotomyTrichotomyObject
  objectMatchesEndpoint : object.solutionSpaceDichotomy ∨ object.solutionSpaceTrichotomy ↔ (endpointSatisfied ∨ remainderRecorded)

def DichotomyTrichotomyWitnessClosed (O : DichotomyTrichotomyObject) : Prop :=
  O.solutionSpaceDichotomy ∨ O.solutionSpaceTrichotomy

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse