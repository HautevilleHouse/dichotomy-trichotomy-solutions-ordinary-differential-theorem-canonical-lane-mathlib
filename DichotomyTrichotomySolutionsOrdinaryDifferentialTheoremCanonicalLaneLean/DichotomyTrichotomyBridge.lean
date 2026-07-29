import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.solutionSpaceDichotomy ∨ A.object.solutionSpaceTrichotomy

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- The admissible class carries a witness for the dichotomy or trichotomy.
  exact A.object.solutionClassification

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse