Assets {
  Id: 14412347638457831706
  Name: "Yellow Heart Catalyst"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14028207144781978070
      Objects {
        Id: 14028207144781978070
        Name: "Yellow Heart Catalyst"
        Transform {
          Scale {
            X: 0.312902391
            Y: 0.312902391
            Z: 0.312902391
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 2148987659398965918
        ChildIds: 174306804924172108
        ChildIds: 14407733740261173668
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2148987659398965918
        Name: "Yellow Heart Catalyst"
        Transform {
          Location {
            X: 16.7602787
            Y: -4.66735029
            Z: -52.9887047
          }
          Rotation {
          }
          Scale {
            X: 3.19588494
            Y: 3.19588494
            Z: 3.19588494
          }
        }
        ParentId: 14028207144781978070
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16609254708742162583
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.590000033
              G: 0.429801375
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 13575683411768208063
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 174306804924172108
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            Y: -25
          }
          Rotation {
            Pitch: 0.268795252
            Yaw: 156.749146
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14028207144781978070
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 6
          }
          Overrides {
            Name: "bp:Color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Emissive"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 11171792275709422916
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14407733740261173668
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            Y: 25
          }
          Rotation {
            Pitch: 0.268795252
            Yaw: -156.749146
            Roll: 4.0021078e-08
          }
          Scale {
            X: 1
            Y: -1
            Z: 1
          }
        }
        ParentId: 14028207144781978070
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 6
          }
          Overrides {
            Name: "bp:Color"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Emissive"
            Color {
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 11171792275709422916
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
    }
    Assets {
      Id: 13575683411768208063
      Name: "Gem - Heart Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_heart_polished_001"
      }
    }
    Assets {
      Id: 16609254708742162583
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
      }
    }
    Assets {
      Id: 11171792275709422916
      Name: "Decal Elven Symbols"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_elven_symbols_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 81
}
