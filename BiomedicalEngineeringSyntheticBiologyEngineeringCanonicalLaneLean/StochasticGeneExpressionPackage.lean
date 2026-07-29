import canonicalLaneMathlib.AdmissibleClass
import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.GeneticCircuitModelPackage

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure StochasticGeneExpressionPackage {G : GeneticCircuitModelPackage} where
  transcriptionalNoise : Prop
  translationalBursts : Prop
  stochasticBistability : Prop

structure StochasticGeneExpressionEvidence {G : GeneticCircuitModelPackage}
    (S : StochasticGeneExpressionPackage G) where
  transcriptionalNoiseClosed : S.transcriptionalNoise
  translationalBurstsClosed : S.translationalBursts
  stochasticBistabilityClosed : S.stochasticBistability

def StochasticGeneExpressionClosed {G : GeneticCircuitModelPackage}
    (S : StochasticGeneExpressionPackage G) : Prop :=
  S.transcriptionalNoise ∧ S.translationalBursts ∧ S.stochasticBistability

theorem stochastic_gene_expression_closed_from_evidence
    {G : GeneticCircuitModelPackage} (S : StochasticGeneExpressionPackage G)
    (E : StochasticGeneExpressionEvidence S) : StochasticGeneExpressionClosed S := by
  exact And.intro E.transcriptionalNoiseClosed
    (And.intro E.translationalBurstsClosed E.stochasticBistabilityClosed)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse