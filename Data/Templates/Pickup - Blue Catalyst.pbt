Assets {
  Id: 13491022136320254863
  Name: "Pickup - Blue Catalyst"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4416796020647399533
      Objects {
        Id: 4416796020647399533
        Name: "Pickup - Blue Catalyst"
        Transform {
          Scale {
            X: 0.665
            Y: 0.665
            Z: 0.665
          }
        }
        ParentId: 13435184631131098900
        ChildIds: 11706269928054709678
        ChildIds: 8146271416871034439
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
              X: 0.4
              Y: 0.4
              Z: 0.4
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
        Id: 11706269928054709678
        Name: "Collider"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -23.5904484
            Yaw: -8.80594826
            Roll: 93.5472565
          }
          Scale {
            X: 1.41473079
            Y: 2.58948445
            Z: 0.41337502
          }
        }
        ParentId: 4416796020647399533
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8146271416871034439
        Name: "Group"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -16.5100403
            Yaw: 19.1618519
            Roll: 21.6636982
          }
          Scale {
            X: 1.50375938
            Y: 1.50375938
            Z: 1.50375938
          }
        }
        ParentId: 4416796020647399533
        ChildIds: 17667549959842256606
        ChildIds: 5264801030395493560
        ChildIds: 1746504238713034863
        ChildIds: 12476659705618717813
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
        Id: 17667549959842256606
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -1.70856524
            Y: 28.6186371
            Z: -1.90734863e-06
          }
          Rotation {
            Yaw: -28.2505627
            Roll: 2.27825581e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8146271416871034439
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5558117680000769860
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
            Id: 5798386156722963642
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5264801030395493560
        Name: "Gem - Trillion Polished"
        Transform {
          Location {
            X: -0.793838501
            Y: -26.7415943
            Z: 1.90734863e-06
          }
          Rotation {
            Yaw: 152.12207
            Roll: 1.50189624e-06
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8146271416871034439
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5558117680000769860
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
            Id: 5798386156722963642
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1746504238713034863
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 0.327056885
            Y: 4.45232391
            Z: 0.415527344
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -44.9999847
            Roll: 7.83511496e-06
          }
          Scale {
            X: 0.500000119
            Y: 0.5
            Z: -0.292755216
          }
        }
        ParentId: 8146271416871034439
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 5558117680000769860
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
            Id: 6423942947328173226
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12476659705618717813
        Name: "Blue Diamond Symbol"
        Transform {
          Location {
            X: 2.17533207
            Y: -6.32936954
            Z: 15.0532856
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -92.4897156
            Roll: 29.5726166
          }
          Scale {
            X: 0.252865404
            Y: 0.234167293
            Z: 0.23416698
          }
        }
        ParentId: 8146271416871034439
        ChildIds: 3249835514942232615
        ChildIds: 9484519987285340701
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
        Id: 3249835514942232615
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: -109.14386
            Y: 24.9894276
            Z: 1.7978363
          }
          Rotation {
            Pitch: 12.139185
            Yaw: 151.537964
            Roll: 5.3218
          }
          Scale {
            X: 2.13908935
            Y: -1.06694651
            Z: 2.88447356
          }
        }
        ParentId: 12476659705618717813
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 5
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
        Id: 9484519987285340701
        Name: "Decal Elven Symbols"
        Transform {
          Location {
            X: 50.979248
            Y: -56.353302
            Z: -15.3979111
          }
          Rotation {
            Pitch: 11.1533632
            Yaw: 149.602
            Roll: 3.03853846
          }
          Scale {
            X: 1.98516262
            Y: 0.990170717
            Z: -3.13937187
          }
        }
        ParentId: 12476659705618717813
        UnregisteredParameters {
          Overrides {
            Name: "bp:Shape Index"
            Int: 5
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
            Name: "bp:Emissive Boost"
            Float: 10
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
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 5798386156722963642
      Name: "Gem - Trillion Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_trillion_polished_001"
      }
    }
    Assets {
      Id: 5558117680000769860
      Name: "Clear Coat 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_clear-coat_001"
      }
    }
    Assets {
      Id: 6423942947328173226
      Name: "Cube - Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_test_001"
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
  SerializationVersion: 92
}
