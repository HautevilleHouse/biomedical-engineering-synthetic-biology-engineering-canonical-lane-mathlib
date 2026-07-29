import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure CRISPREditingPackage where
  cas9Cleavage : Prop
  guideRnaDesign : Prop
  offTargetEffects : Prop
  homologyDirectedRepair : Prop

structure CRISPREditingEvidence (C : CRISPREditingPackage) where
  cas9CleavageClosed : C.cas9Cleavage
  guideRnaDesignClosed : C.guideRnaDesign
  offTargetEffectsClosed : C.offTargetEffects
  homologyDirectedRepairClosed : C.homologyDirectedRepair

def CRISPREditingClosed (C : CRISPREditingPackage) : Prop :=
  C.cas9Cleavage ∧ C.guideRnaDesign ∧ C.offTargetEffects ∧ C.homologyDirectedRepair

theorem crispr_editing_closed_from_evidence
    (C : CRISPREditingPackage) (E : CRISPREditingEvidence C) :
    CRISPREditingClosed C :=
  And.intro E.cas9CleavageClosed
    (And.intro E.guideRnaDesignClosed
      (And.intro E.offTargetEffectsClosed E.homologyDirectedRepairClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse