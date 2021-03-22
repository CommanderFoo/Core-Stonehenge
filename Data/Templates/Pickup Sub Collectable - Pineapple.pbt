Assets {
  Id: 10185558565378909938
  Name: "Pickup Sub Collectable - Pineapple"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4576677207606196457
      Objects {
        Id: 4576677207606196457
        Name: "Pickup Sub Collectable - Pineapple"
        Transform {
          Scale {
            X: 0.0913926512
            Y: 0.0913926512
            Z: 0.0913926512
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 8125309112596129536
        ChildIds: 15325105088314444252
        ChildIds: 6732017526458225786
        ChildIds: 4936119411399075346
        ChildIds: 16441729275503145595
        ChildIds: 10849473779634139133
        ChildIds: 13424312730666185290
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
        Id: 8125309112596129536
        Name: "Collider"
        Transform {
          Location {
            X: 468.616974
            Z: -38.868618
          }
          Rotation {
            Pitch: -85.5982056
            Yaw: -176.662674
            Roll: 176.653885
          }
          Scale {
            X: 3.59754372
            Y: 3.59754372
            Z: 10.6193256
          }
        }
        ParentId: 4576677207606196457
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 16526650515744518887
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
        Id: 15325105088314444252
        Name: "Fern 03"
        Transform {
          Location {
            X: 458.723907
            Y: -66.1963196
            Z: -37.3412514
          }
          Rotation {
            Pitch: -59.8114166
            Yaw: -121.287544
            Roll: 97.7567825
          }
          Scale {
            X: 2.09934163
            Y: 1.88746774
            Z: 1.78444576
          }
        }
        ParentId: 4576677207606196457
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
            Id: 3280557559942806649
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6732017526458225786
        Name: "Ellipsoid - Truncated"
        Transform {
          Location {
            X: 256.348541
            Y: 6.43395853
            Z: -24.4493561
          }
          Rotation {
            Pitch: -85.5981903
            Yaw: -176.662827
            Roll: 176.654083
          }
          Scale {
            X: 4.19846058
            Y: 4.19846058
            Z: 2.79337716
          }
        }
        ParentId: 4576677207606196457
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11984018177224233380
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
            Id: 7645759828976695097
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4936119411399075346
        Name: "Fern 03"
        Transform {
          Location {
            X: 412.446808
            Y: -1.75921154
            Z: -34.0745201
          }
          Rotation {
            Pitch: -85.5981903
            Yaw: -176.662827
            Roll: 176.654083
          }
          Scale {
            X: 3.15755677
            Y: 3.15755677
            Z: 3.50739264
          }
        }
        ParentId: 4576677207606196457
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
            Id: 3280557559942806649
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16441729275503145595
        Name: "Fern 03"
        Transform {
          Location {
            X: 565.868042
            Y: -1.8116
            Z: -45.8630066
          }
          Rotation {
            Pitch: -66.121582
            Yaw: -100.015175
            Roll: 100.910736
          }
          Scale {
            X: 3.15755677
            Y: 3.15755677
            Z: 3.50739264
          }
        }
        ParentId: 4576677207606196457
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
            Id: 3280557559942806649
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10849473779634139133
        Name: "Fern 03"
        Transform {
          Location {
            X: 691.498718
            Y: -1.85081446
            Z: -55.5180359
          }
          Rotation {
            Pitch: -43.0727043
            Yaw: -94.1384277
            Roll: 96.0207291
          }
          Scale {
            X: 3.15755677
            Y: 3.15755677
            Z: 3.50739264
          }
        }
        ParentId: 4576677207606196457
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
            Id: 3280557559942806649
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13424312730666185290
        Name: "Fern 03"
        Transform {
          Location {
            X: 458.718933
            Y: 77.3869934
            Z: -37.9848976
          }
          Rotation {
            Pitch: -61.5276794
            Yaw: -98.1645737
            Roll: 99.248558
          }
          Scale {
            X: 2.09934163
            Y: 1.88746774
            Z: 1.78444576
          }
        }
        ParentId: 4576677207606196457
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
            Id: 3280557559942806649
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
    }
    Assets {
      Id: 16526650515744518887
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 3280557559942806649
      Name: "Fern 03"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_fern_generic_003"
      }
    }
    Assets {
      Id: 7645759828976695097
      Name: "Ellipsoid - Truncated"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ellipsoid_truncated_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 78
}
