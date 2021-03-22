Assets {
  Id: 7413768749873227220
  Name: "Pickup Sub Collectable - Mallet"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8061155647130298278
      Objects {
        Id: 8061155647130298278
        Name: "Pickup Sub Collectable - Mallet"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 2899992038215405552
        ChildIds: 215067850600138423
        ChildIds: 1353775298495019946
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 18
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
        Id: 2899992038215405552
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 11.8948154
            Y: 0.693570375
            Z: 154.77626
          }
          Rotation {
            Pitch: -85.5981903
            Yaw: -176.662704
            Roll: -118.610603
          }
          Scale {
            X: 1.9546876
            Y: 2.81567144
            Z: 2.81567144
          }
        }
        ParentId: 8061155647130298278
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
          }
        }
      }
      Objects {
        Id: 215067850600138423
        Name: "Thorn"
        Transform {
          Location {
            X: -2.7713356
            Y: -0.161485747
            Z: -36.0405159
          }
          Rotation {
            Pitch: -4.39414072
            Yaw: -0.0186351
            Roll: 0.257412702
          }
          Scale {
            X: 2.09858298
            Y: 6.371387
            Z: 2.90389109
          }
        }
        ParentId: 8061155647130298278
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
            Id: 13988574482585689952
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
      Objects {
        Id: 1353775298495019946
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -8.76716518
            Y: -0.511389077
            Z: -114.132248
          }
          Rotation {
            Pitch: -85.5982819
            Yaw: -176.66272
            Roll: 176.653961
          }
          Scale {
            X: 0.158418208
            Y: 3.71383452
            Z: 3.71383452
          }
        }
        ParentId: 8061155647130298278
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
      Id: 13988574482585689952
      Name: "Cube - Chamfered Small Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_hq_003"
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
  SerializationVersion: 78
}
