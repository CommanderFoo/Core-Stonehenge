Assets {
  Id: 4650998914355063426
  Name: "Item Pickup Sub Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11656462785356384221
      Objects {
        Id: 11656462785356384221
        Name: "Item Pickup Sub Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15427196770349038411
        ChildIds: 12977088586266084573
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_pickup"
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
        Id: 12977088586266084573
        Name: "Book"
        Transform {
          Location {
          }
          Rotation {
            Roll: 178.650192
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11656462785356384221
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 76
}
