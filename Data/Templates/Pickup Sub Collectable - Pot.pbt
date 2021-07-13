Assets {
  Id: 6681942669990604598
  Name: "Pickup Sub Collectable - Pot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7571116976348559697
      Objects {
        Id: 7571116976348559697
        Name: "Pickup Collectable - Pot"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 13839161312336762586
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 1
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
        Id: 13839161312336762586
        Name: "Fantasy Clay Pot 02"
        Transform {
          Location {
          }
          Rotation {
            Roll: -1.60082536e-07
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7571116976348559697
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
            Id: 8595582568317201205
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
      Id: 8595582568317201205
      Name: "Fantasy Clay Pot 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fantasy_clay_pot_002_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 85
}
