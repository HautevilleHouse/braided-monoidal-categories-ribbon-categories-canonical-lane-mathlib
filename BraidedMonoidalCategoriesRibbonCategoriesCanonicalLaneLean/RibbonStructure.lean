import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.DualObjects

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure RibbonStructure (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C] where
  twist : ∀ (X : C), X ⟶ X
  twist_inv : ∀ (X : C), X ⟶ X
  twist_inv_twist : ∀ (X : C), twist_inv X ≫ twist X = 𝟙 X := by
    simp
  twist_twist_inv : ∀ (X : C), twist X ≫ twist_inv X = 𝟙 X := by
    simp
  twist_natural : ∀ {X Y : C} (f : X ⟶ Y), f ≫ twist Y = twist X ≫ f := by
    simp
  ribbon_braiding : ∀ (X Y : C), twist (X ⊗ Y) = (braiding X Y) ≫ (braiding Y X) ≫ (twist X ⊗ twist Y) := by
    simp
  twist_unit : twist (𝟙_ C) = 𝟙 (𝟙_ C) := by
    simp

def RibbonCategory (C : Type u) [Category C] [MonoidalCategory C] [BraidedCategory C] : Type u :=
  RibbonStructure C

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse