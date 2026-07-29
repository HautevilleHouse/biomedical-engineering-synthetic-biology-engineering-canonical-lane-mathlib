import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.AdmissibleClass

/-!
# Metabolic Flux Balance Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure MetabolicFluxBalancePackage (A : AdmissibleClass) where
  stoichiometricModel : Prop
  fluxBalance : Prop
  optimalityCriterion : Prop
  thermodynamicFeasibility : Prop

structure MetabolicFluxBalanceEvidence {A : AdmissibleClass} (M : MetabolicFluxBalancePackage A) where
  stoichiometricModelClosed : M.stoichiometricModel
  fluxBalanceClosed : M.fluxBalance
  optimalityCriterionClosed : M.optimalityCriterion
  thermodynamicFeasibilityClosed : M.thermodynamicFeasibility

def MetabolicFluxBalanceClosed {A : AdmissibleClass} (M : MetabolicFluxBalancePackage A) : Prop :=
  M.stoichiometricModel ∧ M.fluxBalance ∧ M.optimalityCriterion ∧ M.thermodynamicFeasibility

theorem metabolic_flux_balance_closed_from_evidence {A : AdmissibleClass} (M : MetabolicFluxBalancePackage A) (E : MetabolicFluxBalanceEvidence M) :
    MetabolicFluxBalanceClosed M := by
  exact And.intro E.stoichiometricModelClosed (And.intro E.fluxBalanceClosed (And.intro E.optimalityCriterionClosed E.thermodynamicFeasibilityClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse