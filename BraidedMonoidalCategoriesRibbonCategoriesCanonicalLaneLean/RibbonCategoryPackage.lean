import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.BraidedMonoidalCategoryPackage

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure RibbonCategoryPackage {B : BraidedMonoidalCategoryPackage} where
  dualObject : Type u → Type u
  evaluation : ∀ (A : Type u), (tensorProduct (dualObject A) A) → unit
  coevaluation : ∀ (A : Type u), unit → (tensorProduct A (dualObject A))
  ribbonIsomorphism : ∀ (A : Type u), A ≅ A
  dualityAxioms : Prop
  ribbonAxioms : Prop
  braidingCompatibility : Prop
  dualityAxiomsClosed : dualityAxioms
  ribbonAxiomsClosed : ribbonAxioms
  braidingCompatibilityClosed : braidingCompatibility
  unit : Type u
  tensorProduct : Type u → Type u → Type u := B.tensorProduct
  associator : ∀ (A B C : Type u), (tensorProduct (tensorProduct A B) C) ≅ (tensorProduct A (tensorProduct B C)) := B.associator
  braiding : ∀ (A B : Type u), (tensorProduct A B) ≅ (tensorProduct B A) := B.braiding

structure RibbonCategoryEvidence {B : BraidedMonoidalCategoryPackage} (R : RibbonCategoryPackage B) where
  dualityAxiomsClosed : R.dualityAxioms
  ribbonAxiomsClosed : R.ribbonAxioms
  braidingCompatibilityClosed : R.braidingCompatibility

def RibbonCategoryClosed {B : BraidedMonoidalCategoryPackage} (R : RibbonCategoryPackage B) : Prop :=
  R.dualityAxioms ∧ R.ribbonAxioms ∧ R.braidingCompatibility

theorem ribbon_category_closed_from_evidence {B : BraidedMonoidalCategoryPackage} (R : RibbonCategoryPackage B) (E : RibbonCategoryEvidence R) : RibbonCategoryClosed R := by
  exact And.intro E.dualityAxiomsClosed (And.intro E.ribbonAxiomsClosed E.braidingCompatibilityClosed)

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse