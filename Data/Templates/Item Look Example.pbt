Assets {
  Id: 6872563654101206001
  Name: "Item Look Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 1855112757633191298
      Objects {
        Id: 1855112757633191298
        Name: "Item Look Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13207548860357947295
        ChildIds: 2154645756386092891
        ChildIds: 920695890700633329
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "look"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 2154645756386092891
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2154645756386092891
        Name: "Book"
        Transform {
          Location {
          }
          Rotation {
            Roll: -90
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1855112757633191298
        UnregisteredParameters {
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5285701219960278763
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          EnableCameraCollision: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 920695890700633329
        Name: "Outline Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1855112757633191298
        ChildIds: 16540526019837761464
        ChildIds: 8169167596980550558
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 16540526019837761464
        Name: "Outline Object"
        Transform {
          Location {
            Z: 3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 920695890700633329
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 2154645756386092891
            }
          }
          Overrides {
            Name: "bp:Hierarchy Discovery Depth"
            Int: 2
          }
          Overrides {
            Name: "bp:Thickness"
            Float: 2
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 1
              G: 1
              B: 0.00400000811
            }
          }
          Overrides {
            Name: "bp:Dynamic Thickness"
            Bool: false
          }
          Overrides {
            Name: "bp:Outline Channel"
            Int: 1
          }
          Overrides {
            Name: "bp:Max Distance Thickness"
            Float: 2.32934117
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 16.9642715
          }
          Overrides {
            Name: "bp:Min Distance"
            Float: 5.9683795
          }
          Overrides {
            Name: "bp:Show Behind Objects"
            Bool: false
          }
          Overrides {
            Name: "bp:Solid Behind Objects"
            Bool: false
          }
          Overrides {
            Name: "bp:Multi-Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Enabled"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 16347485244050219597
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 8169167596980550558
        Name: "Outline_Distance_Checker_Client"
        Transform {
          Location {
            X: -724.208618
            Y: 1209.90918
            Z: -0.761392593
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 920695890700633329
        UnregisteredParameters {
          Overrides {
            Name: "cs:outline"
            ObjectReference {
              SubObjectId: 16540526019837761464
            }
          }
          Overrides {
            Name: "cs:show_distance"
            Float: 800
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 3568247838801392745
          }
        }
      }
    }
    Assets {
      Id: 5285701219960278763
      Name: "Fantasy Book 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fan_book_001_ref"
      }
    }
    Assets {
      Id: 16347485244050219597
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 76
}
