Assets {
  Id: 2868003098755762293
  Name: "Pickup - Yellow Catalyst"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4416796020647399533
      Objects {
        Id: 4416796020647399533
        Name: "Pickup - Yellow Catalyst"
        Transform {
          Scale {
            X: 0.665367126
            Y: 0.665367126
            Z: 0.665367126
          }
        }
        ParentId: 2071753453346508907
        ChildIds: 17949525277477247340
        ChildIds: 16618416618425365694
        ChildIds: 2538261350596745814
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_pickup"
          }
          Overrides {
            Name: "cs:override_scale"
            Bool: true
          }
          Overrides {
            Name: "cs:scale"
            Vector {
              X: 0.7
              Y: 0.7
              Z: 0.7
            }
          }
        }
        WantsNetworking: true
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
        Id: 17949525277477247340
        Name: "Yellow Heart Catalyst"
        Transform {
          Location {
            X: 1.19339883
            Y: 4.60799313
            Z: -5.6525631
          }
          Rotation {
            Pitch: 0.541586161
            Yaw: -94.6264648
            Roll: -0.0438842773
          }
          Scale {
            X: 0.759941697
            Y: 0.759941697
            Z: 0.759941697
          }
        }
        ParentId: 4416796020647399533
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
        WantsNetworking: true
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
        Id: 16618416618425365694
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: -3.30424857
            Y: 9.08935452
            Z: 6.90556097
          }
          Rotation {
            Pitch: -0.211486816
            Yaw: 62.1230049
            Roll: 0.254113078
          }
          Scale {
            X: 0.237787575
            Y: 0.237787575
            Z: 0.237787575
          }
        }
        ParentId: 4416796020647399533
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 6
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Emissive"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
        }
        WantsNetworking: true
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
        Id: 2538261350596745814
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: 8.76757813
            Y: 8.21191406
            Z: 6.91265869
          }
          Rotation {
            Pitch: -0.246124268
            Yaw: 108.624573
            Roll: -0.173461914
          }
          Scale {
            X: 0.237787575
            Y: -0.237787575
            Z: 0.237787575
          }
        }
        ParentId: 4416796020647399533
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 6
          }
          Overrides {
            Name: "bp:Color"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Color Emissive"
            Color {
              R: 1
              G: 1
              B: 1
              A: 1
            }
          }
          Overrides {
            Name: "bp:Emissive Boost"
            Float: 10
          }
        }
        WantsNetworking: true
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
