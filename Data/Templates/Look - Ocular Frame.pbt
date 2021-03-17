Assets {
  Id: 9541816162618524212
  Name: "Look - Ocular Frame"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 423913690008197879
      Objects {
        Id: 423913690008197879
        Name: "Look - Ocular Frame"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14496764963604168968
        ChildIds: 4691694360587740572
        ChildIds: 2108599248742882330
        ChildIds: 9943071446083052733
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "look"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 2108599248742882330
            }
          }
          Overrides {
            Name: "cs:alt"
            ObjectReference {
              SubObjectId: 9943071446083052733
            }
          }
          Overrides {
            Name: "cs:use_alt"
            Bool: false
          }
          Overrides {
            Name: "cs:quest_item_id"
            Int: 1
          }
          Overrides {
            Name: "cs:name"
            String: "Ocular Frame"
          }
          Overrides {
            Name: "cs:use_alt:isrep"
            Bool: true
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
        Id: 4691694360587740572
        Name: "Outline Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 423913690008197879
        ChildIds: 2669866753720119051
        ChildIds: 9259399789981512532
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 2669866753720119051
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
        ParentId: 4691694360587740572
        UnregisteredParameters {
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
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 2108599248742882330
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
        Blueprint {
          BlueprintAsset {
            Id: 16347485244050219597
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 9259399789981512532
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
        ParentId: 4691694360587740572
        UnregisteredParameters {
          Overrides {
            Name: "cs:outline"
            ObjectReference {
              SubObjectId: 2669866753720119051
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 3568247838801392745
          }
        }
      }
      Objects {
        Id: 2108599248742882330
        Name: "Main"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.220504731
            Y: 0.220504731
            Z: 0.37552765
          }
        }
        ParentId: 423913690008197879
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 11061890793203581221
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
        Id: 9943071446083052733
        Name: "Alt"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 423913690008197879
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 10658103842494225631
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
    Assets {
      Id: 11061890793203581221
      Name: "Military Tank Modern Hatch 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_mil_tank_mod_hatch_001_ref"
      }
    }
    Assets {
      Id: 10658103842494225631
      Name: "Ball - Basketball 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_ball_basketball_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
