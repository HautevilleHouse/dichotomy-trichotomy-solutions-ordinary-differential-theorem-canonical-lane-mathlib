import DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

def ConstrainedDichotomyTrichotomyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dichotomy_trichotomy_endgame (A : AdmissibleClass) :
    ConstrainedDichotomyTrichotomyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse