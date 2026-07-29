import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

def ConstrainedBraidedRibbonClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_braided_ribbon_endgame (A : AdmissibleClass) :
    ConstrainedBraidedRibbonClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse