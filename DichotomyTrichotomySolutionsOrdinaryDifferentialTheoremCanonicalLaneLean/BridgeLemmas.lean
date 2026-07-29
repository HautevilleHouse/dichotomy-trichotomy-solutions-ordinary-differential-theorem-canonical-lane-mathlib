import DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DichotomyTrichotomyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DichotomyTrichotomySolutionsOrdinaryDifferentialTheoremCanonicalLaneLean
end HautevilleHouse