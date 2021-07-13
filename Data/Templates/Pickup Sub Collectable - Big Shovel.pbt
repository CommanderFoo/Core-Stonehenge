Assets {
  Id: 14883627992296095316
  Name: "Pickup Sub Collectable - Big Shovel"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2982200214500761694
      Objects {
        Id: 2982200214500761694
        Name: "Pickup Sub Collectable - Big Shovel"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 10684797492108600166
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 12
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
        Id: 10684797492108600166
        Name: "Big Shovel"
        Transform {
          Location {
            X: 50.3039856
            Y: 2.93356061
            Z: 654.701477
          }
          Rotation {
            Pitch: -85.5990372
            Yaw: -176.662491
            Roll: 176.653717
          }
          Scale {
            X: 4.37330675
            Y: 4.37330675
            Z: 4.37330675
          }
        }
        ParentId: 2982200214500761694
        ChildIds: 10793384670438511305
        ChildIds: 2957308263696269521
        ChildIds: 8266841884400482278
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
        Id: 10793384670438511305
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -12.6311779
            Y: -0.000326144509
            Z: -0.000474610308
          }
          Rotation {
            Pitch: -0.000218566041
            Yaw: -1.5367963e-05
            Roll: 2.21981372e-05
          }
          Scale {
            X: 0.73225981
            Y: 0.73225981
            Z: 0.73225981
          }
        }
        ParentId: 10684797492108600166
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
            Id: 5772966795193676662
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
        Id: 2957308263696269521
        Name: "Thorn"
        Transform {
          Location {
            X: 8.265625
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 2
            Y: 3
            Z: 3
          }
        }
        ParentId: 10684797492108600166
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7283825798727192743
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
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
            Id: 1618119182723456761
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
        Id: 8266841884400482278
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 7.30999136
            Y: -1.25947258e-06
            Z: -1.92185485e-06
          }
          Rotation {
          }
          Scale {
            X: 0.0521036908
            Y: 1.22147858
            Z: 1.22147858
          }
        }
        ParentId: 10684797492108600166
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7283825798727192743
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
            Id: 5772966795193676662
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
    }
    Assets {
      Id: 5772966795193676662
      Name: "Large Round Wood Beam 8m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_large_beam_round_6m"
      }
    }
    Assets {
      Id: 1618119182723456761
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
      }
    }
    Assets {
      Id: 7283825798727192743
      Name: "Metal Iron Rusted 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
}
