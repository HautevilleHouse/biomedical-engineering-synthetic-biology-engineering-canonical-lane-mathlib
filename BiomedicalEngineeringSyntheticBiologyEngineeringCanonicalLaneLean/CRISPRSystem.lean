import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure CRISPRSystemPackage where
  guideRNA : Type
  casProtein : Type
  targetDNA : Type
  editingEfficiency : Prop
  specificity : Prop
  offTargetEffects : Prop

structure CRISPRSystemEvidence (C : CRISPRSystemPackage) where
  editingEfficiencyClosed : C.editingEfficiency
  specificityClosed : C.specificity
  offTargetEffectsClosed : C.offTargetEffects

def CRISPRSystemClosed (C : CRISPRSystemPackage) : Prop :=
  C.editingEfficiency ∧ C.specificity ∧ C.offTargetEffects

theorem crispr_system_closed_from_evidence (C : CRISPRSystemPackage)
    (E : CRISPRSystemEvidence C) : CRISPRSystemClosed C := by
  exact And.intro E.editingEfficiencyClosed (And.intro E.specificityClosed E.offTargetEffectsClosed)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse