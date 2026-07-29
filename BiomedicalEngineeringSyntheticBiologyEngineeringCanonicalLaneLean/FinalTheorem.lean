import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

def ConstrainedSyntheticBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_synthetic_biology_endgame (A : AdmissibleClass) :
    ConstrainedSyntheticBiologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse