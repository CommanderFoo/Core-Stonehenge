Assets {
  Id: 16894366056749400076
  Name: "Pickup - White Catalyst"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4416796020647399533
      Objects {
        Id: 4416796020647399533
        Name: "Pickup - White Catalyst"
        Transform {
          Scale {
            X: 0.665
            Y: 0.665
            Z: 0.665
          }
        }
        ParentId: 11515639102854451372
        ChildIds: 5550989309426583940
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
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 5550989309426583940
        Name: "Model"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 0.7
          }
        }
        ParentId: 4416796020647399533
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 18115048909486129914
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 1943440223295511161
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
      Id: 1943440223295511161
      Name: "Gem - Round Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_gem_round_polished_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
