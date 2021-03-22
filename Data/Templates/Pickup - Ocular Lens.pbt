Assets {
  Id: 13970346404228691034
  Name: "Pickup - Ocular Lens"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 17925031349245252806
      Objects {
        Id: 17925031349245252806
        Name: "Pickup - Ocular Lens"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14496764963604168968
        ChildIds: 5563698062711449229
        ChildIds: 12540457876938076680
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "pickup"
          }
          Overrides {
            Name: "cs:name"
            String: "Ocular Lens"
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
        Id: 5563698062711449229
        Name: "Model"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -29.2862549
            Roll: -90
          }
          Scale {
            X: 0.431982577
            Y: 0.431982696
            Z: 0.783207953
          }
        }
        ParentId: 17925031349245252806
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 828021840759750774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.011764707
              G: 0.0901960507
              B: 0.0980392247
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12083954618690686897
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
        Id: 12540457876938076680
        Name: "Outline Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17925031349245252806
        ChildIds: 18417492511868870478
        ChildIds: 608067346884164883
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
        Id: 18417492511868870478
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
        ParentId: 12540457876938076680
        UnregisteredParameters {
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 5563698062711449229
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
        Id: 608067346884164883
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
        ParentId: 12540457876938076680
        UnregisteredParameters {
          Overrides {
            Name: "cs:outline"
            ObjectReference {
              SubObjectId: 18417492511868870478
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
    }
    Assets {
      Id: 12083954618690686897
      Name: "Gem - Round Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_round_polished_001"
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
  SerializationVersion: 78
}
