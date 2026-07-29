import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure MetabolicPathwayPackage where
  enzymeKinetics : Prop
  fluxBalance : Prop
  metaboliteConcentration : Prop
  pathwayOptimization : Prop

structure MetabolicPathwayEvidence (M : MetabolicPathwayPackage) where
  enzymeKineticsClosed : M.enzymeKinetics
  fluxBalanceClosed : M.fluxBalance
  metaboliteConcentrationClosed : M.metaboliteConcentration
  pathwayOptimizationClosed : M.pathwayOptimization

def MetabolicPathwayClosed (M : MetabolicPathwayPackage) : Prop :=
  M.enzymeKinetics ∧ M.fluxBalance ∧ M.metaboliteConcentration ∧ M.pathwayOptimization

theorem metabolic_pathway_closed_from_evidence
    (M : MetabolicPathwayPackage) (E : MetabolicPathwayEvidence M) :
    MetabolicPathwayClosed M :=
  And.intro E.enzymeKineticsClosed
    (And.intro E.fluxBalanceClosed
      (And.intro E.metaboliteConcentrationClosed E.pathwayOptimizationClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse