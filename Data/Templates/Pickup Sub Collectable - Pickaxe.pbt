Assets {
  Id: 10151647694416402815
  Name: "Pickup Sub Collectable - Pickaxe"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 442102575301351709
      Objects {
        Id: 442102575301351709
        Name: "Pickup Sub Collectable - Pickaxe"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 9483171452287693992
        ChildIds: 16136845398996117355
        ChildIds: 5657241922335060180
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 16
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
        Id: 9483171452287693992
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 59.0088882
            Y: 3.44113779
            Z: 767.953857
          }
          Rotation {
            Pitch: -85.5982437
            Yaw: -176.662537
            Roll: 102.717796
          }
          Scale {
            X: 2.83268595
            Y: 2.81567144
            Z: 2.81567144
          }
        }
        ParentId: 442102575301351709
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16136845398996117355
        Name: "Thorn"
        Transform {
          Location {
            X: 36.3908043
            Y: 2.12157607
            Z: 473.543
          }
          Rotation {
            Pitch: -85.5982437
            Yaw: -176.662567
            Roll: 176.653763
          }
          Scale {
            X: 4.37330675
            Y: 12.0265942
            Z: 2.18665338
          }
        }
        ParentId: 442102575301351709
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
            Id: 6679922266733791299
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
      Objects {
        Id: 5657241922335060180
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 43.9224205
            Y: 2.56095409
            Z: 571.613647
          }
          Rotation {
            Pitch: -85.5982437
            Yaw: -176.662567
            Roll: 176.653763
          }
          Scale {
            X: 0.158418208
            Y: 3.71383452
            Z: 3.71383452
          }
        }
        ParentId: 442102575301351709
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
            BoundsScale: 1
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
      Id: 6679922266733791299
      Name: "Crescent - 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_crescent_002"
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
  SerializationVersion: 85
}
