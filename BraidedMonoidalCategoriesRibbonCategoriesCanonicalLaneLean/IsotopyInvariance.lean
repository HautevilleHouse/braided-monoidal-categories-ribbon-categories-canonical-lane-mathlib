import BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean.GraphicalCalculus

namespace HautevilleHouse
namespace BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean

structure IsotopyInvariancePackage {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} {G : GraphicalCalculusPackage B R} where
  reidemeisterI : Prop
  reidemeisterII : Prop
  reidemeisterIII : Prop
  ribbonTwistInvariance : Prop
  isotopyEquivalence : Prop
  reidemeisterIClosed : reidemeisterI
  reidemeisterIIClosed : reidemeisterII
  reidemeisterIIIClosed : reidemeisterIII
  ribbonTwistInvarianceClosed : ribbonTwistInvariance
  isotopyEquivalenceClosed : isotopyEquivalence

structure IsotopyInvarianceEvidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} {G : GraphicalCalculusPackage B R} (I : IsotopyInvariancePackage B R G) where
  reidemeisterIClosed : I.reidemeisterI
  reidemeisterIIClosed : I.reidemeisterII
  reidemeisterIIIClosed : I.reidemeisterIII
  ribbonTwistInvarianceClosed : I.ribbonTwistInvariance
  isotopyEquivalenceClosed : I.isotopyEquivalence

def IsotopyInvarianceClosed {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} {G : GraphicalCalculusPackage B R} (I : IsotopyInvariancePackage B R G) : Prop :=
  I.reidemeisterI ∧ I.reidemeisterII ∧ I.reidemeisterIII ∧ I.ribbonTwistInvariance ∧ I.isotopyEquivalence

theorem isotopy_invariance_closed_from_evidence {B : BraidedMonoidalCategoryPackage} {R : RibbonCategoryPackage B} {G : GraphicalCalculusPackage B R} (I : IsotopyInvariancePackage B R G) (E : IsotopyInvarianceEvidence I) : IsotopyInvarianceClosed I := by
  exact And.intro E.reidemeisterIClosed (And.intro E.reidemeisterIIClosed (And.intro E.reidemeisterIIIClosed (And.intro E.ribbonTwistInvarianceClosed E.isotopyEquivalenceClosed)))

end BraidedMonoidalCategoriesRibbonCategoriesCanonicalLaneLean
end HautevilleHouse