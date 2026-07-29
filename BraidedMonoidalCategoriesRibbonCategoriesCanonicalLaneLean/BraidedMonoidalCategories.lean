import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory where
  Obj : Type u
  Hom : Obj → Obj → Type v
  id : (X : Obj) → Hom X X
  comp : {X Y Z : Obj} → Hom X Y → Hom Y Z → Hom X Z
  tensor : Obj → Obj → Obj
  tensorHom : {X Y Z W : Obj} → Hom X Y → Hom Z W → Hom (tensor X Z) (tensor Y W)
  associator : (X Y Z : Obj) → Hom (tensor (tensor X Y) Z) (tensor X (tensor Y Z))
  leftUnitor : (X : Obj) → Hom (tensor I X) X
  rightUnitor : (X : Obj) → Hom (tensor X I) X
  braiding : (X Y : Obj) → Hom (tensor X Y) (tensor Y X)
  I : Obj
  triangleIdentity : Prop
  pentagonIdentity : Prop
  hexagonIdentity : Prop

structure BraidingEvidence {C : BraidedMonoidalCategory} where
  braidingNatural : Prop
  hexagonLeft : C.hexagonIdentity
  hexagonRight : Prop

def BraidingClosed (C : BraidedMonoidalCategory) : Prop :=
  C.triangleIdentity ∧ C.pentagonIdentity ∧ C.hexagonIdentity

theorem braiding_closed_from_evidence (C : BraidedMonoidalCategory) (E : BraidingEvidence C) : BraidingClosed C := by
  exact And.intro C.triangleIdentity (And.intro C.pentagonIdentity E.hexagonLeft)

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse