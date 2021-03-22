Assets {
  Id: 4887566337860449469
  Name: "Pickup Collectable - Fork"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 14138570094570943887
      Objects {
        Id: 14138570094570943887
        Name: "Pickup Sub Collectable - Fork"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 34
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
        Id: 10292818943746477829
        Name: "Fork"
        Transform {
          Location {
            X: -0.000223353723
            Y: -2.55242185e-06
          }
          Rotation {
            Pitch: -85.5972137
            Yaw: -176.663544
            Roll: 176.654755
          }
          Scale {
            X: 8.46284199
            Y: 8.46284199
            Z: 8.46284199
          }
        }
        ParentId: 14138570094570943887
        ChildIds: 4307895982737964658
        ChildIds: 4313114864779067403
        ChildIds: 12569495187129754379
        ChildIds: 9214495351304003004
        ChildIds: 5832826624230502363
        ChildIds: 7503480121092815005
        ChildIds: 10461619937801975875
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
        Id: 4307895982737964658
        Name: "Collider"
        Transform {
          Location {
            X: 0.730654061
            Y: 6.92181778
            Z: 5.73524e-07
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999939
            Roll: -96.7255249
          }
          Scale {
            X: 0.0911470652
            Y: 0.0577076636
            Z: 0.334403485
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12560420085238163895
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
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 4706700669089266280
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 4313114864779067403
        Name: "Baseball Bat"
        Transform {
          Location {
            X: 0.730664074
            Y: 2.25792241
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: -179.999954
            Roll: -96.7256
          }
          Scale {
            X: 0.320000023
            Y: 0.160000011
            Z: 0.2
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
            }
          }
          Overrides {
            Name: "ma:Shared_Detail1:id"
            AssetReference {
              Id: 12560420085238163895
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
            Id: 14242964548002143666
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 12569495187129754379
        Name: "Sphere - Half Slice Thin"
        Transform {
          Location {
            X: 2.72373056
            Y: -0.775256336
            Z: 3.76106954
          }
          Rotation {
            Pitch: 0.865077555
            Yaw: -0.201395795
            Roll: -76.7966766
          }
          Scale {
            X: 0.0885193348
            Y: 0.092551671
            Z: 0.188638553
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
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
            Id: 3889662249248474337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 9214495351304003004
        Name: "Sphere - Half Slice Thin"
        Transform {
          Location {
            X: 0.743994176
            Y: -0.470532238
            Z: 2.60999227
          }
          Rotation {
            Pitch: 0.865077555
            Yaw: -0.201395795
            Roll: -76.7966766
          }
          Scale {
            X: 0.0885190889
            Y: 0.0826109573
            Z: 0.188638553
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
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
            Id: 3889662249248474337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 5832826624230502363
        Name: "Sphere - Half Slice Thin"
        Transform {
          Location {
            X: -1.39824224
            Y: -0.481176764
            Z: 2.51286864
          }
          Rotation {
            Pitch: 0.865077555
            Yaw: -0.201395795
            Roll: -76.7966766
          }
          Scale {
            X: 0.0885190889
            Y: 0.0826109573
            Z: 0.188638553
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
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
            Id: 3889662249248474337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 7503480121092815005
        Name: "Sphere - Half Slice Thin"
        Transform {
          Location {
            X: -3.54648447
            Y: -0.775256336
            Z: 3.91885924
          }
          Rotation {
            Pitch: 0.865077555
            Yaw: -0.201395795
            Roll: -76.7966766
          }
          Scale {
            X: 0.0885193348
            Y: 0.092551671
            Z: 0.188638553
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
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
            Id: 3889662249248474337
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
          }
        }
      }
      Objects {
        Id: 10461619937801975875
        Name: "Sphere - Half Quarter"
        Transform {
          Location {
            X: 0.746337891
            Y: 0.24432373
            Z: 3.14268732
          }
          Rotation {
            Pitch: 44.2724304
            Yaw: -89.9999924
            Roll: -130.269302
          }
          Scale {
            X: 0.0800000206
            Y: 0.116572417
            Z: 0.123107091
          }
        }
        ParentId: 10292818943746477829
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9691585235102710834
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
            Id: 13678710486927738358
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
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
      Id: 4706700669089266280
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
      }
    }
    Assets {
      Id: 9691585235102710834
      Name: "Metal Iron 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_iron_001"
      }
    }
    Assets {
      Id: 12560420085238163895
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
      }
    }
    Assets {
      Id: 14242964548002143666
      Name: "Baseball Bat"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_weap_modern_bat_001"
      }
    }
    Assets {
      Id: 3889662249248474337
      Name: "Sphere - Half Slice Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_wedge_002"
      }
    }
    Assets {
      Id: 13678710486927738358
      Name: "Sphere - Half Quarter"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_hemisphere_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
