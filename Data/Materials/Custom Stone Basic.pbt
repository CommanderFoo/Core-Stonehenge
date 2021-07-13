Assets {
  Id: 4938177649545668900
  Name: "Custom Stone Basic"
  PlatformAssetType: 13
  SerializationVersion: 92
  CustomMaterialAsset {
    BaseMaterialId: 8856738829947079128
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
      Id: 8856738829947079128
      Name: "Stone Basic"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "stone_001"
      }
    }
  }
}
