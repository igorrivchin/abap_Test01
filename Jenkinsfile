library('piper-lib-os')

abapEnvironmentPullGitRepo script: this


abapEnvironmentCheckoutBranch script: this

abapAddonAssemblyKitCheckPV script: this
abapAddonAssemblyKitCheckCVs script: this

abapEnvironmentCreateSystem script: this
cloudFoundryCreateServiceKey script: this

abapEnvironmentCloneGitRepo script: this

abapEnvironmentRunATCCheck script: this

cloudFoundryCreateServiceKey

abapEnvironmentAssemblePackages

abapAddonAssemblyKitReleasePackages 
  abapAddonAssemblyKitReserveNextPackages 
abapAddonAssemblyKitRegisterPackages 
abapAddonAssemblyKitCreateTargetVector 
abapAddonAssemblyKitPublishTargetVector