Assets {
  Id: 1302717969972071670
  Name: "Custom Grass from Grass Tall"
  PlatformAssetType: 13
  SerializationVersion: 85
  CustomMaterialAsset {
    BaseMaterialId: 9881555392936228321
    ParameterOverrides {
      Overrides {
        Name: "wind_speed"
        Float: 0
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.282000065
          G: 0.418762267
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "color_roots"
        Color {
          G: 0.0406747051
          B: 0.250000119
          A: 1
        }
      }
      Overrides {
        Name: "SSS"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "dist_rotation"
        Float: 0
      }
      Overrides {
        Name: "dist_radius"
        Float: 0
      }
      Overrides {
        Name: "wind_intensity"
        Float: 0
      }
      Overrides {
        Name: "wind_weight"
        Float: 0
      }
    }
    Assets {
      Id: 9881555392936228321
      Name: "Grass (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_grass_dynamic_001_uv"
      }
    }
  }
}
