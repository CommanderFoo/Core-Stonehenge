Assets {
  Id: 11508157921049096015
  Name: "Custom Leaves from Kelp Bush 01"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 15243134632853998761
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 1
          G: 1
          A: 1
        }
      }
      Overrides {
        Name: "color_accent"
        Color {
          R: 1
          G: 1
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "SSS"
        Color {
          R: 0.399999976
          G: 0.904635549
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "wind_intensity"
        Float: 0.15
      }
    }
    Assets {
      Id: 15243134632853998761
      Name: "Kelp (default)"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_kelp_001_uv"
      }
    }
  }
}
