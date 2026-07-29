import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure GeneCircuitModelPackage where
  promoterDynamics : Prop
  repressorBinding : Prop
  inducerEffect : Prop
  reporterExpression : Prop

structure GeneCircuitModelEvidence (C : GeneCircuitModelPackage) where
  promoterDynamicsClosed : C.promoterDynamics
  repressorBindingClosed : C.repressorBinding
  inducerEffectClosed : C.inducerEffect
  reporterExpressionClosed : C.reporterExpression

def GeneCircuitModelClosed (C : GeneCircuitModelPackage) : Prop :=
  C.promoterDynamics ∧ C.repressorBinding ∧ C.inducerEffect ∧ C.reporterExpression

theorem gene_circuit_model_closed_from_evidence
    (C : GeneCircuitModelPackage) (E : GeneCircuitModelEvidence C) :
    GeneCircuitModelClosed C :=
  And.intro E.promoterDynamicsClosed
    (And.intro E.repressorBindingClosed
      (And.intro E.inducerEffectClosed E.reporterExpressionClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse