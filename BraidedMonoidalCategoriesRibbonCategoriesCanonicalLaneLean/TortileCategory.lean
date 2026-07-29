import HautevilleHouse.BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.RibbonCategory

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure TortileCategoryData where
  ribbonData : RibbonCategoryData
  tortileCondition : Prop
  tortileConditionClosed : tortileCondition

structure TortileCategoryEvidence (T : TortileCategoryData) where
  tortileConditionClosed : T.tortileCondition

def TortileCategoryClosed (T : TortileCategoryData) : Prop :=
  T.tortileCondition

theorem tortile_category_closed_from_evidence (T : TortileCategoryData) (E : TortileCategoryEvidence T) :
    TortileCategoryClosed T := by
  exact E.tortileConditionClosed

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse