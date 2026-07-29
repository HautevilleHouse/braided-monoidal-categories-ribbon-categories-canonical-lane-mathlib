import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure DualPairing (C : Type u) [Category C] [MonoidalCategory C] (X Y : C) where
  coeval : 𝟙_ C ⟶ X ⊗ Y
  eval : Y ⊗ X ⟶ 𝟙_ C
  triangleL : (λ_ X).inv ≫ (X ⊗ coeval) ≫ (α_ X Y X).inv ≫ (eval ▷ X) ≫ (ρ_ X).hom = 𝟙 X := by
    simp
  triangleR : (ρ_ Y).inv ≫ (coeval ▷ Y) ≫ (α_ X Y Y) ≫ (Y ◁ eval) ≫ (λ_ Y).hom = 𝟙 Y := by
    simp

def HasDual (C : Type u) [Category C] [MonoidalCategory C] (X : C) : Prop :=
  ∃ (X' : C), Nonempty (DualPairing C X X')

structure LeftDual (C : Type u) [Category C] [MonoidalCategory C] (X : C) where
  dual : C
  pairing : DualPairing C X dual

def RightDual (C : Type u) [Category C] [MonoidalCategory C] (X : C) : Type u :=
  LeftDual C X

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse