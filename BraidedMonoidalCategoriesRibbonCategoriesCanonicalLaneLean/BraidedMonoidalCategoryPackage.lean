import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedMonoidalCategoryPackage where
  tensorProduct : Type u → Type u → Type u
  associator : ∀ (A B C : Type u), (tensorProduct (tensorProduct A B) C) ≅ (tensorProduct A (tensorProduct B C))
  braiding : ∀ (A B : Type u), (tensorProduct A B) ≅ (tensorProduct B A)
  pentagonCoherence : Prop
  hexagonCoherence : Prop
  braidingNaturality : Prop
  triangleCoherence : Prop
  unitConstraints : Prop
  pentagonCoherenceClosed : pentagonCoherence
  hexagonCoherenceClosed : hexagonCoherence
  braidingNaturalityClosed : braidingNaturality
  triangleCoherenceClosed : triangleCoherence
  unitConstraintsClosed : unitConstraints

structure BraidedMonoidalCategoryEvidence (B : BraidedMonoidalCategoryPackage) where
  pentagonCoherenceClosed : B.pentagonCoherence
  hexagonCoherenceClosed : B.hexagonCoherence
  braidingNaturalityClosed : B.braidingNaturality
  triangleCoherenceClosed : B.triangleCoherence
  unitConstraintsClosed : B.unitConstraints

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategoryPackage) : Prop :=
  B.pentagonCoherence ∧ B.hexagonCoherence ∧ B.braidingNaturality ∧ B.triangleCoherence ∧ B.unitConstraints

theorem braided_monoidal_category_closed_from_evidence (B : BraidedMonoidalCategoryPackage) (E : BraidedMonoidalCategoryEvidence B) : BraidedMonoidalCategoryClosed B := by
  exact And.intro E.pentagonCoherenceClosed (And.intro E.hexagonCoherenceClosed (And.intro E.braidingNaturalityClosed (And.intro E.triangleCoherenceClosed E.unitConstraintsClosed)))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse