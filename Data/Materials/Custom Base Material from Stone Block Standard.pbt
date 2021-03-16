Assets {
  Id: 13589615655507419152
  Name: "Custom Base Material from Stone Block Standard"
  PlatformAssetType: 13
  SerializationVersion: 78
  CustomMaterialAsset {
    BaseMaterialId: 15878560451278636255
    ParameterOverrides {
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.288619727
          G: 0.401000023
          B: 0.286715
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.336432278
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "material_scale"
        Float: 1
      }
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 1
      }
    }
    Assets {
      Id: 15878560451278636255
      Name: "Stone Blocks"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fantasy_block_001_uv"
      }
    }
  }
}
