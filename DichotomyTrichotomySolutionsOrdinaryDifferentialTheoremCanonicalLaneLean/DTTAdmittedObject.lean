import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

structure DTTSolutionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DTTAdmittedObject where
  space : DTTSolutionSpace
  dichotomyHolds : Prop
  trichotomyHolds : Prop
  solutionClassification : Prop
  conclusion : solutionClassification

def DTTWitnessClosed (O : DTTAdmittedObject) : Prop :=
  O.solutionClassification

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
