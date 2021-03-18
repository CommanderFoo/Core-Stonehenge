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
        ChildIds: 8666625684753737544
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
          }
        }
      }
      Objects {
        Id: 8666625684753737544
        Name: "Pickaxe"
        Transform {
          Location {
            X: 47.1160049
            Y: 2.74758339
            Z: 613.177673
          }
          Rotation {
            Pitch: -85.5986328
            Yaw: -176.662567
            Roll: 176.653793
          }
          Scale {
            X: 4.37330675
            Y: 4.37330675
            Z: 4.37330675
          }
        }
        ParentId: 442102575301351709
        ChildIds: 16136845398996117355
        ChildIds: 5657241922335060180
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
        Id: 16136845398996117355
        Name: "Thorn"
        Transform {
          Location {
            X: 32.023922
            Y: -4.25000508e-06
            Z: -1.11817029e-13
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 2.75
            Z: 0.5
          }
        }
        ParentId: 8666625684753737544
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
          }
        }
      }
      Objects {
        Id: 5657241922335060180
        Name: "Large Round Wood Beam 8m"
        Transform {
          Location {
            X: 9.53218651
            Y: -1.26504938e-06
            Z: -3.32832686e-14
          }
          Rotation {
          }
          Scale {
            X: 0.0362238958
            Y: 0.849205077
            Z: 0.849205077
          }
        }
        ParentId: 8666625684753737544
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
  SerializationVersion: 78
}
