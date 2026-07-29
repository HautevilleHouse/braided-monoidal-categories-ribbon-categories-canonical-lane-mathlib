import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Braiding

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedCategoryData where
  category : Type u
  [instMonoidal : CategoryTheory.MonoidalCategory category]
  braiding : CategoryTheory.BraidedCategory category
  hexagonIdentity : Prop
  braidingNaturalIso : Prop
  hexagonIdentityClosed : hexagonIdentity
  braidingNaturalIsoClosed : braidingNaturalIso

structure BraidedCategoryEvidence (B : BraidedCategoryData) where
  hexagonIdentityClosed : B.hexagonIdentity
  braidingNaturalIsoClosed : B.braidingNaturalIso

def BraidedCategoryClosed (B : BraidedCategoryData) : Prop :=
  B.hexagonIdentity ∧ B.braidingNaturalIso

theorem braided_category_closed_from_evidence (B : BraidedCategoryData) (E : BraidedCategoryEvidence B) :
    BraidedCategoryClosed B := by
  exact And.intro E.hexagonIdentityClosed E.braidingNaturalIsoClosed

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse