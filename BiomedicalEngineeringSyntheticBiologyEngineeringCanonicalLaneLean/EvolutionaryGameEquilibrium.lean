import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.AdmissibleClass

/-!
# Evolutionary Game Equilibrium Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure EvolutionaryGameEquilibriumPackage (A : AdmissibleClass) where
  payoffMatrix : Prop
  nashEquilibrium : Prop
  evolutionaryStableStrategy : Prop
  replicatorDynamics : Prop

structure EvolutionaryGameEquilibriumEvidence {A : AdmissibleClass} (E : EvolutionaryGameEquilibriumPackage A) where
  payoffMatrixClosed : E.payoffMatrix
  nashEquilibriumClosed : E.nashEquilibrium
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  replicatorDynamicsClosed : E.replicatorDynamics

def EvolutionaryGameEquilibriumClosed {A : AdmissibleClass} (E : EvolutionaryGameEquilibriumPackage A) : Prop :=
  E.payoffMatrix ∧ E.nashEquilibrium ∧ E.evolutionaryStableStrategy ∧ E.replicatorDynamics

theorem evolutionary_game_equilibrium_closed_from_evidence {A : AdmissibleClass} (E : EvolutionaryGameEquilibriumPackage A) (Ev : EvolutionaryGameEquilibriumEvidence E) :
    EvolutionaryGameEquilibriumClosed E := by
  exact And.intro Ev.payoffMatrixClosed (And.intro Ev.nashEquilibriumClosed (And.intro Ev.evolutionaryStableStrategyClosed Ev.replicatorDynamicsClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse