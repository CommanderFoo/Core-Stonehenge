Assets {
  Id: 11688970130801126
  Name: "Custom Basic Material"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 10184847056121543272
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.969271719
          G: 0.613333344
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          G: 0.0370859392
          B: 0.373333335
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.120456859
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.394841641
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
  }
}
