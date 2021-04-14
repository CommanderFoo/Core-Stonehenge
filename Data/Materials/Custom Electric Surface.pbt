Assets {
  Id: 3842239774957640782
  Name: "Custom Electric Surface"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 7794432307345644439
    ParameterOverrides {
      Overrides {
        Name: "emissiveboost"
        Float: 2.83292174
      }
      Overrides {
        Name: "texture scale"
        Float: 4.2804
      }
      Overrides {
        Name: "shape 1"
        Float: 0
      }
      Overrides {
        Name: "arc speed"
        Float: 1
      }
      Overrides {
        Name: "bolt distortion scale"
        Float: 2
      }
    }
    Assets {
      Id: 7794432307345644439
      Name: "Electric Surface"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_electrical_surface"
      }
    }
  }
}
