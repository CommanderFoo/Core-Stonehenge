Assets {
  Id: 12190793945212562802
  Name: "Item Look Sub Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 11656462785356384221
      Objects {
        Id: 11656462785356384221
        Name: "Item Look Sub Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15427196770349038411
        ChildIds: 12977088586266084573
        ChildIds: 10231518687034223236
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_look"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 12977088586266084573
            }
          }
          Overrides {
            Name: "cs:alt"
            ObjectReference {
              SubObjectId: 10231518687034223236
            }
          }
          Overrides {
            Name: "cs:use_alt"
            Bool: false
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
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 12977088586266084573
        Name: "Book"
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 5285701219960278763
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
      Objects {
        Id: 10231518687034223236
        Name: "Cube - Arcade 01"
        Transform {
          Location {
            Y: 1.89599609
            Z: -18.7377472
          }
          Rotation {
          }
          Scale {
            X: 0.419676811
            Y: 0.419676811
            Z: 0.419676811
          }
        }
        ParentId: 11656462785356384221
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
            Id: 942597030047407748
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
      Id: 5285701219960278763
      Name: "Fantasy Book 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_fan_book_001_ref"
      }
    }
    Assets {
      Id: 942597030047407748
      Name: "Cube - Arcade 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_arcade_cube_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 118
}
