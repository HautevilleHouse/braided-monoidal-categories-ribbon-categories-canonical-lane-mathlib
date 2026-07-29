import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure CoherenceConditionsPackage where
  pentagonAxiom : Prop
  triangleAxiom : Prop
  hexagonAxiom : Prop
  dinaturality : Prop

structure CoherenceConditionsEvidence (C : CoherenceConditionsPackage) where
  pentagonAxiomClosed : C.pentagonAxiom
  triangleAxiomClosed : C.triangleAxiom
  hexagonAxiomClosed : C.hexagonAxiom
  dinaturalityClosed : C.dinaturality

def CoherenceConditionsClosed (C : CoherenceConditionsPackage) : Prop :=
  C.pentagonAxiom ∧ C.triangleAxiom ∧ C.hexagonAxiom ∧ C.dinaturality

theorem coherence_conditions_closed_from_evidence (C : CoherenceConditionsPackage) (E : CoherenceConditionsEvidence C) : CoherenceConditionsClosed C := by
  exact And.intro E.pentagonAxiomClosed (And.intro E.triangleAxiomClosed (And.intro E.hexagonAxiomClosed E.dinaturalityClosed))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse