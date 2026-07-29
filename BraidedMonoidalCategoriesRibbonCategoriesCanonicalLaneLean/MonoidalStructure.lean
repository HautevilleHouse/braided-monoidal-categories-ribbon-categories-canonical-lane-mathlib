import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory (C : Type u) where
  obj : Type u
  hom : obj → obj → Type v
  id : (X : obj) → hom X X
  comp : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  tensorProduct : obj → obj → obj
  tensorHom : {X Y Z W : obj} → hom X Y → hom Z W → hom (tensorProduct X Z) (tensorProduct Y W)
  associator : (X Y Z : obj) → hom (tensorProduct (tensorProduct X Y) Z) (tensorProduct X (tensorProduct Y Z))
  leftUnitor : (X : obj) → hom (tensorProduct (unit X) X) X
  rightUnitor : (X : obj) → hom (tensorProduct X (unit X)) X
  pentagonCondition : Prop
  triangleCondition : Prop
  unit : obj → obj

structure BraidedMonoidalEvidence (C : BraidedMonoidalCategory) where
  pentagonClosed : C.pentagonCondition
  triangleClosed : C.triangleCondition

def BraidedMonoidalClosed (C : BraidedMonoidalCategory) : Prop :=
  C.pentagonCondition ∧ C.triangleCondition

theorem braided_monoidal_closed_from_evidence (C : BraidedMonoidalCategory)
    (E : BraidedMonoidalEvidence C) : BraidedMonoidalClosed C := by
  exact And.intro E.pentagonClosed E.triangleClosed

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse