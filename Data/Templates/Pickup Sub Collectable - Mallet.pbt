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
        ParentId: 4781671109827199097
        ChildIds: 2899992038215405552
        ChildIds: 15026516642023036830
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 5
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
        Id: 15026516642023036830
        Name: "Mallet"
        Transform {
          Location {
            X: 0.00111677067
            Y: -3.63396964e-07
            Z: -8.5811429e-05
          }
          Rotation {
            Pitch: -85.5983276
            Yaw: -176.66272
            Roll: 176.653961
          }
          Scale {
            X: 4.37330675
            Y: 4.37330675
            Z: 4.37330675
          }
        }
        ParentId: 8061155647130298278
        ChildIds: 215067850600138423
        ChildIds: 1353775298495019946
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
        Id: 215067850600138423
        Name: "Thorn"
        Transform {
          Location {
            X: 8.26560211
            Y: -1.09695668e-06
            Z: 6.02619734e-12
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.479861826
            Y: 1.45688081
            Z: 0.664003491
          }
        }
        ParentId: 15026516642023036830
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
            X: 26.1744423
            Y: -3.47370064e-06
            Z: -9.13925714e-14
          }
          Rotation {
          }
          Scale {
            X: 0.0362238958
            Y: 0.849205077
            Z: 0.849205077
          }
        }
        ParentId: 15026516642023036830
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
