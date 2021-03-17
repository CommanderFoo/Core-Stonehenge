Assets {
  Id: 6993920025212198406
  Name: "Pickup - Trowel"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4117319961845347984
      Objects {
        Id: 4117319961845347984
        Name: "Pickup - Trowel"
        Transform {
          Scale {
            X: 0.093
            Y: 0.0930468664
            Z: 0.0930468664
          }
        }
        ParentId: 2071753453346508907
        ChildIds: 2201457271517641819
        ChildIds: 8985601547904302556
        ChildIds: 15773861181231146186
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
        Id: 2201457271517641819
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: -12.633337
            Y: 0.000537292624
            Z: 0.000672616647
          }
          Rotation {
            Yaw: -2.13443386e-07
          }
          Scale {
            X: 0.684537172
            Y: 1.08869874
            Z: 1.08869874
          }
        }
        ParentId: 4117319961845347984
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.616666555
              G: 2.94049528e-07
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
        Id: 8985601547904302556
        Name: "Thorn"
        Transform {
          Location {
            X: 8.26721478
            Y: 0.00104840123
            Z: -0.000307722134
          }
          Rotation {
            Pitch: 90
            Yaw: 19.4712238
            Roll: 19.4712296
          }
          Scale {
            X: 1.9999975
            Y: 2.99999714
            Z: 5.81915665
          }
        }
        ParentId: 4117319961845347984
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
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 15773861181231146186
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 4.36606932
            Y: -0.00113936455
            Z: -0.000842412352
          }
          Rotation {
            Yaw: -2.13443386e-07
          }
          Scale {
            X: 0.0521036908
            Y: 1.22147846
            Z: 1.22147846
          }
        }
        ParentId: 4117319961845347984
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
          Value: "mc:ecollisionsetting:forceoff"
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
