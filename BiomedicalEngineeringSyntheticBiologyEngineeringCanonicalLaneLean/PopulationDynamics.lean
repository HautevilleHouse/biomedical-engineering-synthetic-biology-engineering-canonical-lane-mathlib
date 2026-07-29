import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure PopulationDynamicsPackage where
  growthRate : Prop
  carryingCapacity : Prop
  competitionModel : Prop
  equilibriumStability : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamicsPackage) where
  growthRateClosed : P.growthRate
  carryingCapacityClosed : P.carryingCapacity
  competitionModelClosed : P.competitionModel
  equilibriumStabilityClosed : P.equilibriumStability

def PopulationDynamicsClosed (P : PopulationDynamicsPackage) : Prop :=
  P.growthRate ∧ P.carryingCapacity ∧ P.competitionModel ∧ P.equilibriumStability

theorem population_dynamics_closed_from_evidence (P : PopulationDynamicsPackage)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.growthRateClosed (And.intro E.carryingCapacityClosed
    (And.intro E.competitionModelClosed E.equilibriumStabilityClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse