import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  strategySet : Type
  payoffMatrix : Prop
  replicatorDynamics : Prop
  evolutionarilyStableStrategy : Prop
  fitnessLandscape : Prop

structure EvolutionaryGameTheoryEvidence (E : EvolutionaryGameTheoryPackage) where
  payoffMatrixClosed : E.payoffMatrix
  replicatorDynamicsClosed : E.replicatorDynamics
  evolutionarilyStableStrategyClosed : E.evolutionarilyStableStrategy
  fitnessLandscapeClosed : E.fitnessLandscape

def EvolutionaryGameTheoryClosed (E : EvolutionaryGameTheoryPackage) : Prop :=
  E.payoffMatrix ∧ E.replicatorDynamics ∧ E.evolutionarilyStableStrategy ∧ E.fitnessLandscape

theorem evolutionary_game_theory_closed_from_evidence (E : EvolutionaryGameTheoryPackage)
    (Ev : EvolutionaryGameTheoryEvidence E) : EvolutionaryGameTheoryClosed E := by
  exact And.intro Ev.payoffMatrixClosed (And.intro Ev.replicatorDynamicsClosed
    (And.intro Ev.evolutionarilyStableStrategyClosed Ev.fitnessLandscapeClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse