import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.RibbonCategoryPackage

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure GraphicalCalculusPackage {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} where
  strandRepresentation : Prop
  crossingRepresentation : Prop
  cupCapRepresentation : Prop
  ribbonTwistRepresentation : Prop
  isotopyMoves : Prop
  strandRepresentationClosed : strandRepresentation
  crossingRepresentationClosed : crossingRepresentation
  cupCapRepresentationClosed : cupCapRepresentation
  ribbonTwistRepresentationClosed : ribbonTwistRepresentation
  isotopyMovesClosed : isotopyMoves

structure GraphicalCalculusEvidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} (G : GraphicalCalculusPackage B R) where
  strandRepresentationClosed : G.strandRepresentation
  crossingRepresentationClosed : G.crossingRepresentation
  cupCapRepresentationClosed : G.cupCapRepresentation
  ribbonTwistRepresentationClosed : G.ribbonTwistRepresentation
  isotopyMovesClosed : G.isotopyMoves

def GraphicalCalculusClosed {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} (G : GraphicalCalculusPackage B R) : Prop :=
  G.strandRepresentation ∧ G.crossingRepresentation ∧ G.cupCapRepresentation ∧ G.ribbonTwistRepresentation ∧ G.isotopyMoves

theorem graphical_calculus_closed_from_evidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} (G : GraphicalCalculusPackage B R) (E : GraphicalCalculusEvidence G) : GraphicalCalculusClosed G := by
  exact And.intro E.strandRepresentationClosed (And.intro E.crossingRepresentationClosed (And.intro E.cupCapRepresentationClosed (And.intro E.ribbonTwistRepresentationClosed E.isotopyMovesClosed)))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse