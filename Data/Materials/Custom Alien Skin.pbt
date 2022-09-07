Assets {
  Id: 12230775548448850183
  Name: "Custom Alien Skin"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 6050310833664627485
    ParameterOverrides {
      Overrides {
        Name: "roughness_multiplier"
        Float: 0
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "gradient_color"
        Color {
          A: 1
        }
      }
    }
    Assets {
      Id: 6050310833664627485
      Name: "Gravel Raked 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_gravel_001_uv"
      }
    }
  }
}
