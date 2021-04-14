Assets {
  Id: 15993422133760117570
  Name: "Tent Canvas"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 16027930921305223857
    ParameterOverrides {
      Overrides {
        Name: "wind_intensity"
        Float: 6
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.536458
          G: 0.429104239
          B: 0.366952121
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.347222328
          G: 0.285631239
          B: 0.186873078
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0.394766599
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0.549092174
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: true
      }
    }
    Assets {
      Id: 16027930921305223857
      Name: "Awning"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_awning_002_uv_ref"
      }
    }
  }
}
