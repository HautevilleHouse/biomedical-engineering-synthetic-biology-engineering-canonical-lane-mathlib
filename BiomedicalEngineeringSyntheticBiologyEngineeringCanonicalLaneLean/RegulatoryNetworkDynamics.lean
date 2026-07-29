import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean

structure RegulatoryNetworkDynamicsPackage where
  odeModel : Prop
  stochasticNoise : Prop
  steadyStateAnalysis : Prop
  bifurcationBehavior : Prop

structure RegulatoryNetworkDynamicsEvidence (R : RegulatoryNetworkDynamicsPackage) where
  odeModelClosed : R.odeModel
  stochasticNoiseClosed : R.stochasticNoise
  steadyStateAnalysisClosed : R.steadyStateAnalysis
  bifurcationBehaviorClosed : R.bifurcationBehavior

def RegulatoryNetworkDynamicsClosed (R : RegulatoryNetworkDynamicsPackage) : Prop :=
  R.odeModel ∧ R.stochasticNoise ∧ R.steadyStateAnalysis ∧ R.bifurcationBehavior

theorem regulatory_network_dynamics_closed_from_evidence
    (R : RegulatoryNetworkDynamicsPackage) (E : RegulatoryNetworkDynamicsEvidence R) :
    RegulatoryNetworkDynamicsClosed R :=
  And.intro E.odeModelClosed
    (And.intro E.stochasticNoiseClosed
      (And.intro E.steadyStateAnalysisClosed E.bifurcationBehaviorClosed))

end BiomedicalEngineeringSyntheticBiologyEngineeringCanonicalLaneLean
end HautevilleHouse