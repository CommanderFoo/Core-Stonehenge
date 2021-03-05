Assets {
  Id: 14001880389802570812
  Name: "Custom Stone Basic"
  PlatformAssetType: 13
  SerializationVersion: 76
  CustomMaterialAsset {
    BaseMaterialId: 11699563938914086432
    ParameterOverrides {
      Overrides {
        Name: "v_tiles"
        Float: 2
      }
      Overrides {
        Name: "u_tiles"
        Float: 2
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.538000047
          G: 0.538000047
          B: 0.538000047
          A: 1
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.21647428
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 0.2
      }
    }
    Assets {
      Id: 11699563938914086432
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
  }
}
