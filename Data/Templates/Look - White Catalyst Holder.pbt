Assets {
  Id: 143747440703481674
  Name: "Look - White Catalyst Holder"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 423913690008197879
      Objects {
        Id: 423913690008197879
        Name: "Look - White Catalyst Holder"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16647472273432662559
        ChildIds: 2108599248742882330
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_remove"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 2108599248742882330
            }
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 2108599248742882330
        Name: "Main"
        Transform {
          Location {
            X: -6.30664063
            Y: 6.26123047
            Z: -8.8747406
          }
          Rotation {
            Yaw: 50.7545471
          }
          Scale {
            X: 1.93376899
            Y: 1.75570321
            Z: 0.344710112
          }
        }
        ParentId: 423913690008197879
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10683065336905200881
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6628731841327595102
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
      Id: 6628731841327595102
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 10683065336905200881
      Name: "Invisible"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_invisible_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
}
