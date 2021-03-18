Assets {
  Id: 6993920025212198406
  Name: "Pickup - Shovel"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4117319961845347984
      Objects {
        Id: 4117319961845347984
        Name: "Pickup - Shovel"
        Transform {
          Scale {
            X: 0.093
            Y: 0.0930468664
            Z: 0.0930468664
          }
        }
        ParentId: 2071753453346508907
        ChildIds: 3120974033112231446
        ChildIds: 17965039029688065627
        ChildIds: 4943600506370468706
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_pickup"
          }
          Overrides {
            Name: "cs:override_scale"
            Bool: true
          }
          Overrides {
            Name: "cs:scale"
            Vector {
              X: 0.03
              Y: 0.03
              Z: 0.03
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
        Id: 3120974033112231446
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -40.4594536
            Y: -0.00112839451
            Z: -0.000728988321
          }
          Rotation {
            Pitch: -0.000218566041
            Yaw: -2.99888361e-05
            Roll: 2.0490621e-05
          }
          Scale {
            X: 2.34552383
            Y: 2.34434247
            Z: 2.34434247
          }
        }
        ParentId: 4117319961845347984
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
        Id: 17965039029688065627
        Name: "Big Shovel"
        Transform {
          Location {
            Y: -0.000446279271
            Z: 0.000477709138
          }
          Rotation {
          }
          Scale {
            X: 3.20313072
            Y: 3.20151734
            Z: 3.20151734
          }
        }
        ParentId: 4117319961845347984
        ChildIds: 6563556710290265842
        ChildIds: 5594361642336525343
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
        Id: 6563556710290265842
        Name: "Thorn"
        Transform {
          Location {
            X: 8.265625
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 2
            Y: 3
            Z: 3
          }
        }
        ParentId: 17965039029688065627
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
            Id: 1618119182723456761
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
        Id: 5594361642336525343
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 7.30999136
            Y: -1.25947258e-06
            Z: -1.92185485e-06
          }
          Rotation {
          }
          Scale {
            X: 0.0521036908
            Y: 1.22147858
            Z: 1.22147858
          }
        }
        ParentId: 17965039029688065627
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
      Objects {
        Id: 4943600506370468706
        Name: "Cube"
        Transform {
          Location {
            X: 584.164856
            Y: 5.7658596
            Z: 24.1198292
          }
          Rotation {
            Pitch: -0.594787598
            Yaw: -179.298309
            Roll: -1.58337402
          }
          Scale {
            X: 25.6273727
            Y: 6.10184813
            Z: 1.52190292
          }
        }
        ParentId: 4117319961845347984
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 6628731841327595102
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          DisableReceiveDecals: true
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
      Id: 1618119182723456761
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
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
  SerializationVersion: 78
}
