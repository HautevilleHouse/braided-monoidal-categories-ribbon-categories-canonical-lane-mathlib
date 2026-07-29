import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure RibbonCategory (C : BraidedMonoidalCategory) (B : Braiding C) where
  twist : (X : C.obj) → C.hom (C.tensorProduct X (C.unit X)) (C.tensorProduct (C.unit X) X)
  ribbonCondition : Prop
  twistCompatibility : Prop

structure RibbonCategoryEvidence {C : BraidedMonoidalCategory} {B : Braiding C} (R : RibbonCategory C B) where
  ribbonConditionClosed : R.ribbonCondition
  twistCompatibilityClosed : R.twistCompatibility

def RibbonCategoryClosed {C : BraidedMonoidalCategory} {B : Braiding C} (R : RibbonCategory C B) : Prop :=
  R.ribbonCondition ∧ R.twistCompatibility

theorem ribbon_category_closed_from_evidence {C : BraidedMonoidalCategory} {B : Braiding C}
    (R : RibbonCategory C B) (E : RibbonCategoryEvidence R) : RibbonCategoryClosed R := by
  exact And.intro E.ribbonConditionClosed E.twistCompatibilityClosed

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse