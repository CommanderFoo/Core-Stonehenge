Assets {
  Id: 13266200192618713927
  Name: "Custom Opaque Bubble Glass"
  PlatformAssetType: 13
  SerializationVersion: 118
  CustomMaterialAsset {
    BaseMaterialId: 8471595097559052102
    ParameterOverrides {
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
        Name: "Inner Color"
        Color {
          R: 0.480000019
          G: 1
          B: 0.876026571
          A: 1
        }
      }
    }
    Assets {
      Id: 8471595097559052102
      Name: "Opaque Bubble Glass"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_opaque_bubble_glass"
      }
    }
  }
}
