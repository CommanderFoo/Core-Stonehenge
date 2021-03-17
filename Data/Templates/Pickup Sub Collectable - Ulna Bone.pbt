Assets {
  Id: 11051323384136180575
  Name: "Pickup Sub Collectable - Ulna Bone"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 2164140871331328747
      Objects {
        Id: 2164140871331328747
        Name: "Pickup Sub Collectable - Ulna Bone"
        Transform {
          Scale {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 875639681759563061
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 5
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
        Id: 875639681759563061
        Name: "Bone Human Ulna 01"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.479007959
            Yaw: -0.0010773323
            Roll: 0.256622404
          }
          Scale {
            X: 2.30820155
            Y: 2.30820155
            Z: 2.30820155
          }
        }
        ParentId: 2164140871331328747
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
            Id: 8888115498211777799
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
      Id: 8888115498211777799
      Name: "Bone Human Ulna 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ulna_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
