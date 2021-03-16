Assets {
  Id: 12224668437285060961
  Name: "Custom Frosted Glass"
  PlatformAssetType: 13
  SerializationVersion: 78
  CustomMaterialAsset {
    BaseMaterialId: 5375998939647311776
    ParameterOverrides {
      Overrides {
        Name: "Specular"
        Float: 0.242120281
      }
      Overrides {
        Name: "Clarity"
        Float: 1
      }
      Overrides {
        Name: "Thickness"
        Float: 1
      }
    }
    Assets {
      Id: 5375998939647311776
      Name: "Frosted Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_frosted_glass"
      }
    }
  }
}
