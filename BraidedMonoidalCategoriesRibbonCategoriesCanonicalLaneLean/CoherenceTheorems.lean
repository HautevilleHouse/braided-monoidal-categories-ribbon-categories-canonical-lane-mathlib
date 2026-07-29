import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.BraidedMonoidalCategoryPackage

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure CoherenceTheoremsPackage {B : BraidedMonoidalCategoryPackage} where
  macLaneCoherence : Prop
  braidedCoherence : Prop
  graphicalCalculusSoundness : Prop
  macLaneCoherenceClosed : macLaneCoherence
  braidedCoherenceClosed : braidedCoherence
  graphicalCalculusSoundnessClosed : graphicalCalculusSoundness

structure CoherenceTheoremsEvidence {B : BraidedMonoidalCategoryPackage} (C : CoherenceTheoremsPackage B) where
  macLaneCoherenceClosed : C.macLaneCoherence
  braidedCoherenceClosed : C.braidedCoherence
  graphicalCalculusSoundnessClosed : C.graphicalCalculusSoundness

def CoherenceTheoremsClosed {B : BraidedMonoidalCategoryPackage} (C : CoherenceTheoremsPackage B) : Prop :=
  C.macLaneCoherence ∧ C.braidedCoherence ∧ C.graphicalCalculusSoundness

theorem coherence_theorems_closed_from_evidence {B : BraidedMonoidalCategoryPackage} (C : CoherenceTheoremsPackage B) (E : CoherenceTheoremsEvidence C) : CoherenceTheoremsClosed C := by
  exact And.intro E.macLaneCoherenceClosed (And.intro E.braidedCoherenceClosed E.graphicalCalculusSoundnessClosed)

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse