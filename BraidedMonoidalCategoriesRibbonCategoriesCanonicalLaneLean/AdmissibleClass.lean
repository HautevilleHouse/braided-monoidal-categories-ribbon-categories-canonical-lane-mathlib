import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure AdmittedBraidedRibbonObject where
  category : Type u
  catCategory : Category category
  monoidal : MonoidalCategory category
  braided : BraidedCategory category
  ribbon : RibbonCategory category
  hasRightDuals : ∀ (X : category), HasDual category X
  conclusion : True

structure AdmissibleClass where
  object : AdmittedBraidedRibbonObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (by
    have h : A.object.conclusion := True.intro
    exact h) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse