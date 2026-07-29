import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidedMonoidalCategory (C : Type u) [CategoryStruct C] [MonoidalCategoryStruct C] where
  braiding : ∀ (X Y : C), X ⊗ Y ≅ Y ⊗ X
  hexagonL : ∀ (X Y Z : C), (braiding X (Y ⊗ Z)).hom ≫ ((braiding X Y).hom ▷ Z) ≫ (associator Y X Z).hom = (associator X Y Z).hom ≫ (Y ◁ (braiding X Z).hom) ≫ (associator Y Z X).hom
  hexagonR : ∀ (X Y Z : C), (braiding (X ⊗ Y) Z).hom ≫ (X ◁ (braiding Y Z).hom) ≫ (associator X Z Y).hom = (associator X Y Z).inv ≫ ((braiding X Z).hom ▷ Y) ≫ (associator Z X Y).hom
  braidingNaturalityLeft : ∀ (X : C) {Y Z : C} (f : Y ⟶ Z), (X ◁ f) ≫ (braiding X Z).hom = (braiding X Y).hom ≫ (f ▷ X)
  braidingNaturalityRight : ∀ {X Y : C} (f : X ⟶ Y) (Z : C), (f ▷ Z) ≫ (braiding Y Z).hom = (braiding X Z).hom ≫ (Z ◁ f)

def BraidedMonoidalCategoryClosed {C : Type u} [CategoryStruct C] [MonoidalCategoryStruct C] (B : BraidedMonoidalCategory C) : Prop :=
  True

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse