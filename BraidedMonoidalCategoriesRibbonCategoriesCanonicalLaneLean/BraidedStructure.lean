import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom Y Z → Hom X Y → Hom X Z
  tensor : Obj → Obj → Obj
  tensorHom : {X₁ Y₁ X₂ Y₂ : Obj} → Hom X₁ Y₁ → Hom X₂ Y₂ → Hom (tensor X₁ X₂) (tensor Y₁ Y₂)
  braiding : (X Y : Obj) → Hom (tensor X Y) (tensor Y X)
  associator : (X Y Z : Obj) → Hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : (X : Obj) → Hom (tensor unit X) X
  rightUnitor : (X : Obj) → Hom (tensor X unit) X
  unit : Obj
  categoryLaws : Prop
  tensorLaws : Prop
  braidingNaturality : Prop
  hexagonLaws : Prop
  unitLaws : Prop

structure BraidingEvidence (B : BraidedMonoidalCategory) where
  categoryLawsClosed : B.categoryLaws
  tensorLawsClosed : B.tensorLaws
  braidingNaturalityClosed : B.braidingNaturality
  hexagonLawsClosed : B.hexagonLaws
  unitLawsClosed : B.unitLaws

def BraidedMonoidalCategoryClosed (B : BraidedMonoidalCategory) : Prop :=
  B.categoryLaws ∧ B.tensorLaws ∧ B.braidingNaturality ∧ B.hexagonLaws ∧ B.unitLaws

theorem braided_monoidal_category_closed_from_evidence
    (B : BraidedMonoidalCategory) (E : BraidingEvidence B) :
    BraidedMonoidalCategoryClosed B := by
  exact And.intro E.categoryLawsClosed
    (And.intro E.tensorLawsClosed
      (And.intro E.braidingNaturalityClosed
        (And.intro E.hexagonLawsClosed E.unitLawsClosed)))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse