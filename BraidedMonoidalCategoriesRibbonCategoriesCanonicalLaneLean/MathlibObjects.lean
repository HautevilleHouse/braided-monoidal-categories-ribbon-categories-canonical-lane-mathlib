import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RibbonSpace where
  carrier : Type
  braiding : carrier → carrier → carrier
  twist : carrier → carrier
  dual : carrier → carrier

structure RibbonAdmittedObject where
  space : RibbonSpace
  braidedMonoidalStructure : Prop
  ribbonStructure : Prop
  conclusion : braidedMonoidalStructure ∧ ribbonStructure

def RibbonWitnessClosed (O : RibbonAdmittedObject) : Prop :=
  O.conclusion

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse