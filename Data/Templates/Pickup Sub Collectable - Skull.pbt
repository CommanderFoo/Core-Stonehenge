Assets {
  Id: 7876156294920058136
  Name: "Pickup Sub Collectable - Skull"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15809821440587810234
      Objects {
        Id: 15809821440587810234
        Name: "Pickup Sub Collectable - Skull"
        Transform {
          Scale {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 5053287547191071543
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 9
          }
          Overrides {
            Name: "cs:collectable_parent_id"
            Int: 9
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 5053287547191071543
        Name: "Bone Human Skull 01"
        Transform {
          Location {
            X: 0.0488228686
            Y: -6.60026598
            Z: 5.85457802
          }
          Rotation {
            Pitch: -0.479007959
            Yaw: -0.00107733312
            Roll: -14.8055592
          }
          Scale {
            X: 1.96082127
            Y: 1.96082127
            Z: 1.96082127
          }
        }
        ParentId: 15809821440587810234
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
            Id: 12220921741596944974
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
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 12220921741596944974
      Name: "Bone Human Skull 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_skull_01_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
