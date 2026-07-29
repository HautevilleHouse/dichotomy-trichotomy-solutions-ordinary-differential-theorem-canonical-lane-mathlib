import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DichotomyTrichotomySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DichotomyTrichotomyAdmittedObject where
  space : DichotomyTrichotomySpace
  odeSystem : Type
  solutionSpace : Type
  dichotomyProperty : Prop
  trichotomyProperty : Prop
  conclusion : dichotomyProperty ∨ trichotomyProperty

structure DichotomyTrichotomyEndgameState where
  object : DichotomyTrichotomyAdmittedObject

def DichotomyTrichotomyWitnessClosed (O : DichotomyTrichotomyAdmittedObject) : Prop :=
  O.dichotomyProperty ∨ O.trichotomyProperty

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse