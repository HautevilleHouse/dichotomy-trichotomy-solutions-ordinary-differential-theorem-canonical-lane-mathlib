import DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean.ODEFramework

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

structure FlowPackage (F : ODEFramework) where
  flowMap : F.phaseSpace → F.phaseSpace
  invariantMeasures : Prop
  LyapunovFunctionExists : Prop

def FlowClosed {F : ODEFramework} (P : FlowPackage F) : Prop :=
  P.invariantMeasures ∧ P.LyapunovFunctionExists

theorem flow_closed (F : ODEFramework) (P : FlowPackage F) : FlowClosed P := by
  exact And.intro P.invariantMeasures P.LyapunovFunctionExists

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
