import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DichotomyTrichotomyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DichotomyTrichotomyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse