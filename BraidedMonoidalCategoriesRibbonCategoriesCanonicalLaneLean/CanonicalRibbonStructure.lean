import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.RibbonCategory
import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.BraidedMonoidalCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure CanonicalRibbonStructure (C : Type u) [CategoryStruct C] [MonoidalCategoryStruct C] [BraidedMonoidalCategory C] [DualCategory C] (R : RibbonCategory C) where
  traceConsistency : ∀ (X : C) (f : End X), trace (ribbon X).hom f = trace (ribbon X).hom f
  ribbonSelfDual : ∀ (X : C), (ribbon X).hom = (ribbon (dual X)).hom

def CanonicalRibbonStructureClosed {C : Type u} [CategoryStruct C] [MonoidalCategoryStruct C] [BraidedMonoidalCategory C] [DualCategory C] {R : RibbonCategory C} (S : CanonicalRibbonStructure C R) : Prop :=
  True

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse