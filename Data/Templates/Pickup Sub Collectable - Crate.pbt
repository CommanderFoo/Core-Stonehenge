Assets {
  Id: 14656422688933385803
  Name: "Pickup Sub Collectable - Crate"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12321968322413288320
      Objects {
        Id: 12321968322413288320
        Name: "Pickup Sub Collectable - Crate"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 15730326967886438218
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 13
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
        Id: 15730326967886438218
        Name: "Simple Crate 150cm"
        Transform {
          Location {
            X: 0.00178683456
            Y: -5.81361e-07
            Z: -0.000137285082
          }
          Rotation {
            Pitch: -85.5990295
            Yaw: -176.662384
            Roll: 176.65361
          }
          Scale {
            X: 9.40828323
            Y: 9.40828323
            Z: 9.40828323
          }
        }
        ParentId: 12321968322413288320
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
            Id: 15049846606931455745
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
      Id: 15049846606931455745
      Name: "Simple Crate 150cm"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crate_simple_150cm_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 81
}
