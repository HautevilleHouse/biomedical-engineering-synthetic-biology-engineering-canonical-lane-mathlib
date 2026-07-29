import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.SyntheticBiologyAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

def bridgeClosed (A : SyntheticBiologyAdmissibleClass) : Prop :=
  A.object.circuitConstructed

theorem bridge_from_admissible_class (A : SyntheticBiologyAdmissibleClass) : bridgeClosed A :=
  A.object.circuitConstructed

def gateClosed (A : SyntheticBiologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SyntheticBiologyAdmissibleClass) : gateClosed A :=
  A.gateWitness

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse