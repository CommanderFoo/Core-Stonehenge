Assets {
  Id: 828021840759750774
  Name: "Custom Radar Screen"
  PlatformAssetType: 13
  SerializationVersion: 85
  CustomMaterialAsset {
    BaseMaterialId: 5244681434384779090
    ParameterOverrides {
      Overrides {
        Name: "enable radar grid"
        Bool: false
      }
      Overrides {
        Name: "emissive boost"
        Float: 5
      }
      Overrides {
        Name: "blip color"
        Color {
          R: 0.994000077
          G: 0.974277735
          A: 1
        }
      }
      Overrides {
        Name: "blip brightness"
        Float: 6.6410141
      }
      Overrides {
        Name: "rotation speed"
        Float: 0.566768169
      }
      Overrides {
        Name: "background color"
        Color {
          R: 0.011764707
          G: 0.0901960805
          B: 0.0980392247
          A: 1
        }
      }
    }
    Assets {
      Id: 5244681434384779090
      Name: "Radar Screen"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_radar"
      }
    }
  }
}
