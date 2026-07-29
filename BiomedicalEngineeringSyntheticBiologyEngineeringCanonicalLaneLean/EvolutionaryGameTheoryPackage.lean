import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.PopulationDynamicsPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure EvolutionaryGameTheoryPackage {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} {P : PopulationDynamicsPackage S} where
  payoffMatrix : Prop
  replicatorDynamics : Prop
  evolutionaryStableState : Prop

structure EvolutionaryGameTheoryEvidence {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} {P : PopulationDynamicsPackage S}
    (E : EvolutionaryGameTheoryPackage P) where
  payoffMatrixClosed : E.payoffMatrix
  replicatorDynamicsClosed : E.replicatorDynamics
  evolutionaryStableStateClosed : E.evolutionaryStableState

def EvolutionaryGameTheoryClosed {G : GeneticCircuitModelPackage}
    {S : StochasticGeneExpressionPackage G} {P : PopulationDynamicsPackage S}
    (E : EvolutionaryGameTheoryPackage P) : Prop :=
  E.payoffMatrix ∧ E.replicatorDynamics ∧ E.evolutionaryStableState

theorem evolutionary_game_theory_closed_from_evidence
    {G : GeneticCircuitModelPackage} {S : StochasticGeneExpressionPackage G}
    {P : PopulationDynamicsPackage S} (E : EvolutionaryGameTheoryPackage P)
    (Ev : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.payoffMatrixClosed
    (And.intro Ev.replicatorDynamicsClosed Ev.evolutionaryStableStateClosed)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse