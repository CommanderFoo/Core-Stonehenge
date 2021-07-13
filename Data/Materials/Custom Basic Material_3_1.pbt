Assets {
  Id: 7881308863463627148
  Name: "Custom Basic Material_3_1"
  PlatformAssetType: 13
  SerializationVersion: 92
  CustomMaterialAsset {
    BaseMaterialId: 10184847056121543272
    ParameterOverrides {
      Overrides {
        Name: "color"
        Color {
          R: 0.160000026
          G: 0.883178592
          B: 1
          A: 1
        }
      }
      Overrides {
        Name: "roughness"
        Float: 0.5
      }
      Overrides {
        Name: "specular"
        Float: 1
      }
      Overrides {
        Name: "metallic"
        Float: 0.4
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
