import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.BraidingStructure

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure RibbonCategory (C : Type u) [CategoryStruct.{v} C] extends BraidingStructure C where
  dual : C → C
  unit : C
  counit (X : C) : dual X ⊗ X ⟶ unit
  unit' (X : C) : unit ⟶ X ⊗ dual X
  snakeLeft : ∀ (X : C), (unit' X ⊗ 𝟙 (dual X)) ≫ (𝟙 X ⊗ counit X) = 𝟙 X := by
    simp
  snakeRight : ∀ (X : C), (𝟙 (dual X) ⊗ unit' X) ≫ (counit X ⊗ 𝟙 (dual X)) = 𝟙 (dual X) := by
    simp
  ribbon : ∀ (X : C), X ≅ dual (dual X)
  braidingDual : ∀ (X Y : C), (ribbon (X ⊗ Y)).hom = (braiding X (dual Y)).hom ≫ ((braiding (dual X) Y).hom) ≫ ((ribbon X).hom ⊗ (ribbon Y).hom) := by
    simp

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse