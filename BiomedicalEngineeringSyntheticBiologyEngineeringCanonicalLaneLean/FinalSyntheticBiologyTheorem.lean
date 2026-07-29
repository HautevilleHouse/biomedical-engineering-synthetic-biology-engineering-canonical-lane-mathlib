import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.SyntheticBiologyBridgeLemmas

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

def ConstrainedSyntheticBiologyClosure (A : SyntheticBiologyAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_synthetic_biology_endgame (A : SyntheticBiologyAdmissibleClass) :
    ConstrainedSyntheticBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse