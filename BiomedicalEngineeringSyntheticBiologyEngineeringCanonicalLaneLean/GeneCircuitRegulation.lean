import BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean.AdmissibleClass

/-!
# Gene Circuit Regulation Package
-/

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure GeneCircuitRegulationPackage (A : AdmissibleClass) where
  transcriptionalRegulation : Prop
  feedbackLoops : Prop
  steadyStateExpression : Prop
  robustness : Prop

structure GeneCircuitRegulationEvidence {A : AdmissibleClass} (G : GeneCircuitRegulationPackage A) where
  transcriptionalRegulationClosed : G.transcriptionalRegulation
  feedbackLoopsClosed : G.feedbackLoops
  steadyStateExpressionClosed : G.steadyStateExpression
  robustnessClosed : G.robustness

def GeneCircuitRegulationClosed {A : AdmissibleClass} (G : GeneCircuitRegulationPackage A) : Prop :=
  G.transcriptionalRegulation ∧ G.feedbackLoops ∧ G.steadyStateExpression ∧ G.robustness

theorem gene_circuit_regulation_closed_from_evidence {A : AdmissibleClass} (G : GeneCircuitRegulationPackage A) (E : GeneCircuitRegulationEvidence G) :
    GeneCircuitRegulationClosed G := by
  exact And.intro E.transcriptionalRegulationClosed (And.intro E.feedbackLoopsClosed (And.intro E.steadyStateExpressionClosed E.robustnessClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse