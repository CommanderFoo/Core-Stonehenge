Assets {
  Id: 4692315148196810691
  Name: "Custom Generic Water_1"
  PlatformAssetType: 13
  SerializationVersion: 81
  CustomMaterialAsset {
    BaseMaterialId: 9380438267019211225
    ParameterOverrides {
      Overrides {
        Name: "foam color"
        Color {
          R: 1
          G: 1
          B: 1
          A: 0.314
        }
      }
      Overrides {
        Name: "speed"
        Float: 0.1
      }
      Overrides {
        Name: "wind direction"
        Vector {
          Z: 3
        }
      }
      Overrides {
        Name: "wind speed"
        Float: 0.588318527
      }
      Overrides {
        Name: "opacity"
        Float: 0.370218217
      }
      Overrides {
        Name: "object displacement amount"
        Float: 1
      }
      Overrides {
        Name: "flow direction"
        Vector {
          X: 0.1
          Y: 0.1
          Z: 6
        }
      }
      Overrides {
        Name: "edge foam brightness"
        Float: 0.0993509814
      }
      Overrides {
        Name: "normal foam brightness"
        Float: 0
      }
      Overrides {
        Name: "foam shape min"
        Float: 0.356146783
      }
    }
    Assets {
      Id: 9380438267019211225
      Name: "Generic Water"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxma_parameter_driven_water_manual"
      }
    }
  }
}
