import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure SyntheticGeneCircuitPackage where
  promoter : Type
  ribosomeBindingSite : Type
  codingSequence : Type
  terminator : Type
  circuitTopology : Prop
  orthogonalToHost : Prop
  robustExpression : Prop

structure SyntheticGeneCircuitEvidence (P : SyntheticGeneCircuitPackage) where
  circuitTopologyClosed : P.circuitTopology
  orthogonalToHostClosed : P.orthogonalToHost
  robustExpressionClosed : P.robustExpression

def SyntheticGeneCircuitClosed (P : SyntheticGeneCircuitPackage) : Prop :=
  P.circuitTopology ∧ P.orthogonalToHost ∧ P.robustExpression

theorem synthetic_gene_circuit_closed_from_evidence
    (P : SyntheticGeneCircuitPackage) (E : SyntheticGeneCircuitEvidence P) :
    SyntheticGeneCircuitClosed P := by
  exact And.intro E.circuitTopologyClosed
    (And.intro E.orthogonalToHostClosed E.robustExpressionClosed)

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse