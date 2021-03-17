Assets {
  Id: 1866812002155985152
  Name: "Look - Dirt"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12163144266375748837
      Objects {
        Id: 12163144266375748837
        Name: "Look - Dirt"
        Transform {
          Scale {
            X: 0.411944419
            Y: 0.411944389
            Z: 0.41194436
          }
        }
        ParentId: 13435184631131098900
        ChildIds: 17493709979831521127
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_look"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 17493709979831521127
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 17493709979831521127
        Name: "Main"
        Transform {
          Location {
            X: -12.8834734
            Z: 30.8594303
          }
          Rotation {
          }
          Scale {
            X: 4.36731195
            Y: 10.2003918
            Z: 4.32232332
          }
        }
        ParentId: 12163144266375748837
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8787233930870400864
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 10690864167827508535
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
      Id: 10690864167827508535
      Name: "Hill 05"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hill_005"
      }
    }
    Assets {
      Id: 8787233930870400864
      Name: "Dirt 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "dirt_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
