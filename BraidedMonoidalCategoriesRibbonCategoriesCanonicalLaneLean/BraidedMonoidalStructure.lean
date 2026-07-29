import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidingTransformation (C : Type u) [Category C] [MonoidalCategory C] where
  braiding : ∀ (X Y : C), X ⊗ Y ⟶ Y ⊗ X
  hexagonL : ∀ (X Y Z : C), (braiding X (Y ⊗ Z)) ≫ (braiding (Y ⊗ Z) X) = (X ◁ braiding Y Z) ≫ (braiding X Y ▷ Z) ≫ (Y ◁ braiding X Z) := by
    simp
  hexagonR : ∀ (X Y Z : C), (braiding (X ⊗ Y) Z) ≫ (braiding Z (X ⊗ Y)) = (braiding X Z ▷ Y) ≫ (X ◁ braiding Y Z) ≫ (braiding X Y ▷ Z) := by
    simp
  naturalityL : ∀ {X Y : C} (f : X ⟶ Y) (Z : C), (braiding X Z) ≫ (f ▷ Z) = (Z ◁ f) ≫ (braiding Y Z) := by
    simp
  naturalityR : ∀ {X Y : C} (Z : C) (f : X ⟶ Y), (braiding Z X) ≫ (Z ◁ f) = (f ▷ Z) ≫ (braiding Z Y) := by
    simp

def BraidedMonoidalStructure (C : Type u) [Category C] [MonoidalCategory C] : Type u :=
  BraidingTransformation C

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse