import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure SyntheticBiologyAdmittedObject where
  circuitModel : Type
  dynamics : Type
  editingSystem : Type
  pathway : Type
  conclusion : Prop

structure AdmissibleClass where
  object : SyntheticBiologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse