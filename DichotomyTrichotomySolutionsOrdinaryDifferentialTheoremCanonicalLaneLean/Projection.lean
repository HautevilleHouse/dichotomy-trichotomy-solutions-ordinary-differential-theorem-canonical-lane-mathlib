import DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dichotomyTrichotomyProjection : Projection DichotomyTrichotomyEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dichotomy_trichotomy_projection_idempotent (x : DichotomyTrichotomyEndgameState) :
    dichotomyTrichotomyProjection.toFun (dichotomyTrichotomyProjection.toFun x) = dichotomyTrichotomyProjection.toFun x := by
  exact dichotomyTrichotomyProjection.idempotent x

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse