import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidingStructure (C : Type u) [CategoryStruct.{v} C] where
  braiding (X Y : C) : X ⊗ Y ≅ Y ⊗ X
  hexagonLeft : ∀ (X Y Z : C), (braiding X (Y ⊗ Z)) ≫ (braiding X Y ⊗ (𝟙 Z)) = (𝟙 Y ⊗ braiding X Z) ≫ (braiding (X ⊗ Y) Z) ≫ (braiding X Y ⊗ 𝟙 Z) := by
    simp
  hexagonRight : ∀ (X Y Z : C), (braiding (X ⊗ Y) Z) ≫ (𝟙 X ⊗ braiding Y Z) = (braiding X Z ⊗ 𝟙 Y) ≫ (braiding X (Y ⊗ Z)) ≫ (𝟙 X ⊗ braiding Y Z) := by
    simp
  naturalityLeft : ∀ (X Y Z : C) (f : X ⟶ Y), (braiding Y Z) ≫ (f ⊗ 𝟙 Z) = (𝟙 Z ⊗ f) ≫ (braiding Z X) := by
    simp
  naturalityRight : ∀ (X Y Z : C) (g : Y ⟶ Z), (braiding X Z) ≫ (𝟙 Z ⊗ g) = (g ⊗ 𝟙 X) ≫ (braiding X Y) := by
    simp

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse