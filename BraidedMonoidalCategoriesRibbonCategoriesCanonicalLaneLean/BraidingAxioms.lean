import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure BraidingAxiomsPackage where
  naturality : Prop
  hexagonForward : Prop
  hexagonBackward : Prop
  inverseCondition : Prop

structure BraidingAxiomsEvidence (B : BraidingAxiomsPackage) where
  naturalityClosed : B.naturality
  hexagonForwardClosed : B.hexagonForward
  hexagonBackwardClosed : B.hexagonBackward
  inverseConditionClosed : B.inverseCondition

def BraidingAxiomsClosed (B : BraidingAxiomsPackage) : Prop :=
  B.naturality ∧ B.hexagonForward ∧ B.hexagonBackward ∧ B.inverseCondition

theorem braiding_axioms_closed_from_evidence (B : BraidingAxiomsPackage) (E : BraidingAxiomsEvidence B) : BraidingAxiomsClosed B := by
  exact And.intro E.naturalityClosed (And.intro E.hexagonForwardClosed (And.intro E.hexagonBackwardClosed E.inverseConditionClosed))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse