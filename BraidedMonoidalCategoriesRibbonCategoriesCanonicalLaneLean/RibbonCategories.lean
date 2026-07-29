import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.BraidedMonoidalCategories

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure RibbonCategory (C : BraidedMonoidalCategory) where
  dual : C.Obj → C.Obj
  unit : (X : C.Obj) → C.Hom C.I (C.tensor X (dual X))
  counit : (X : C.Obj) → C.Hom (C.tensor (dual X) X) C.I
  ribbon : (X : C.Obj) → C.Hom X X
  zigzagIdentity : Prop
  ribbonCompatibility : Prop

structure RibbonEvidence {C : BraidedMonoidalCategory} (R : RibbonCategory C) where
  zigzagClosed : R.zigzagIdentity
  ribbonClosed : R.ribbonCompatibility

def RibbonClosed {C : BraidedMonoidalCategory} (R : RibbonCategory C) : Prop :=
  R.zigzagIdentity ∧ R.ribbonCompatibility

theorem ribbon_closed_from_evidence {C : BraidedMonoidalCategory} (R : RibbonCategory C) (E : RibbonEvidence R) : RibbonClosed R := by
  exact And.intro E.zigzagClosed E.ribbonClosed

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse