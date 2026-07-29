import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.StochasticGeneExpressionPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure PopulationDynamicsPackage {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} where
  growthRate : Prop
  carryingCapacity : Prop
  competitionCoefficient : Prop

structure PopulationDynamicsEvidence {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} (P : PopulationDynamicsPackage S) where
  growthRateClosed : P.growthRate
  carryingCapacityClosed : P.carryingCapacity
  competitionCoefficientClosed : P.competitionCoefficient

def PopulationDynamicsClosed {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} (P : PopulationDynamicsPackage S) : Prop :=
  P.growthRate ∧ P.carryingCapacity ∧ P.competitionCoefficient

theorem population_dynamics_closed_from_evidence
    {G : GeneticCircuitModelPackage} {S : StochasticGeneExpressionPackage G}
    (P : PopulationDynamicsPackage S) (E : PopulationDynamicsEvidence P) :
    PopulationDynamicsClosed P := by
  exact And.intro E.growthRateClosed
    (And.intro E.carryingCapacityClosed E.competitionCoefficientClosed)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse