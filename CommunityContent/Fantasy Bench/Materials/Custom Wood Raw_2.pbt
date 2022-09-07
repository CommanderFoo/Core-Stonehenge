Assets {
  Id: 8264788549906959051
  Name: "Custom Wood Raw_2"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 2664847478369185144
    ParameterOverrides {
      Overrides {
        Name: "rotate_material"
        Float: 90
      }
      Overrides {
        Name: "u_tiles"
        Float: 0.125
      }
      Overrides {
        Name: "v_tiles"
        Float: 0.125
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.522000074
          G: 0.263071418
          A: 1
        }
      }
      Overrides {
        Name: "gradient_color"
        Color {
          R: 0.7700001
          G: 0.388055563
          A: 1
        }
      }
      Overrides {
        Name: "gradient_shift"
        Float: 0
      }
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "gradient_direction"
        Vector {
          X: 90
        }
      }
      Overrides {
        Name: "gradient_worldspace"
        Bool: false
      }
      Overrides {
        Name: "gradient_falloff"
        Float: 0
      }
    }
    Assets {
      Id: 2664847478369185144
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
  }
}
