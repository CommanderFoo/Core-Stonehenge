Assets {
  Id: 2381104215590920803
  Name: "Custom Radar Screen Transparent"
  PlatformAssetType: 13
  SerializationVersion: 78
  CustomMaterialAsset {
    BaseMaterialId: 7180373136087985887
    ParameterOverrides {
      Overrides {
        Name: "enable radar grid"
        Bool: false
      }
      Overrides {
        Name: "sweep color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "blip color"
        Color {
          R: 0.494792
          B: 0.007963
          A: 1
        }
      }
      Overrides {
        Name: "background color"
        Color {
          R: 0.00727
          G: 0.020833
          B: 0.012716
          A: 1
        }
      }
    }
    Assets {
      Id: 7180373136087985887
      Name: "Radar Screen Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_radar_trans"
      }
    }
  }
}
