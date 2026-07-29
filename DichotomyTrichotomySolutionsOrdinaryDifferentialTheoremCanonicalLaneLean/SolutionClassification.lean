import DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean.DTTAdmittedObject

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

structure SolutionClassificationPackage where
  solutionTypes : Type
  dichotomyCondition : Prop
  trichotomyCondition : Prop
  classificationComplete : Prop

structure SolutionClassificationEvidence (C : SolutionClassificationPackage) where
  dichotomyConditionClosed : C.dichotomyCondition
  trichotomyConditionClosed : C.trichotomyCondition
  classificationCompleteClosed : C.classificationComplete

def SolutionClassificationClosed (C : SolutionClassificationPackage) : Prop :=
  C.dichotomyCondition ∧ C.trichotomyCondition ∧ C.classificationComplete

theorem solution_classification_closed_from_evidence
    (C : SolutionClassificationPackage) (E : SolutionClassificationEvidence C) :
    SolutionClassificationClosed C := by
  exact And.intro E.dichotomyConditionClosed
    (And.intro E.trichotomyConditionClosed E.classificationCompleteClosed)

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse
