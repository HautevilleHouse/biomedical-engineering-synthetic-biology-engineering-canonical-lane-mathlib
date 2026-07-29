import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure SyntheticBiologyAdmissibleObject where
  organism : String
  circuitConstructed : Prop
  syntheticEndpointSatisfied : Prop
  remainderRecorded : Prop

structure SyntheticBiologyAdmissibleClass where
  object : SyntheticBiologyAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def syntheticBiologyAdmittedClosure (A : SyntheticBiologyAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse