import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.SyntheticBiologyAdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure GeneticCircuitModelPackage where
  promoterStrength : Prop
  repressorBinding : Prop
  geneExpressionLevel : Prop
  feedbackLoop : Prop

structure GeneticCircuitModelEvidence (G : GeneticCircuitModelPackage) where
  promoterStrengthClosed : G.promoterStrength
  repressorBindingClosed : G.repressorBinding
  geneExpressionLevelClosed : G.geneExpressionLevel
  feedbackLoopClosed : G.feedbackLoop

def GeneticCircuitModelClosed (G : GeneticCircuitModelPackage) : Prop :=
  G.promoterStrength ∧ G.repressorBinding ∧ G.geneExpressionLevel ∧ G.feedbackLoop

theorem genetic_circuit_model_closed_from_evidence
    (G : GeneticCircuitModelPackage) (E : GeneticCircuitModelEvidence G) :
    GeneticCircuitModelClosed G := by
  exact And.intro E.promoterStrengthClosed
    (And.intro E.repressorBindingClosed
      (And.intro E.geneExpressionLevelClosed E.feedbackLoopClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse