Assets {
  Id: 4391372497492395791
  Name: "Pickup Sub Collectable - Ace of Spades"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7762618397856155660
      Objects {
        Id: 7762618397856155660
        Name: "Pickup Sub Collectable - Ace of Spades"
        Transform {
          Scale {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 8883270284089739780
        ChildIds: 13217005881212138607
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 15
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
        Id: 8883270284089739780
        Name: "Card"
        Transform {
          Location {
            X: 207.413559
            Y: -0.0674870461
            Z: -15.9361143
          }
          Rotation {
            Pitch: -4.39355326
            Yaw: -0.0186426509
            Roll: 0.257553935
          }
          Scale {
            X: 0.0507613756
            Y: 5.11960649
            Z: 3.69409037
          }
        }
        ParentId: 7762618397856155660
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15449607076393427372
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13217005881212138607
        Name: "Ace of Spades"
        Transform {
          Location {
            X: 207.413666
            Y: -0.0674868524
            Z: -15.9361286
          }
          Rotation {
            Pitch: -85.5987778
            Yaw: -176.662338
            Roll: 176.653564
          }
          Scale {
            X: 3.07726073
            Y: 3.07726073
            Z: 3.07726073
          }
        }
        ParentId: 7762618397856155660
        ChildIds: 3831528278070983890
        ChildIds: 1211264584371485751
        ChildIds: 6925522641383501330
        ChildIds: 18404258320311498525
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
        Id: 3831528278070983890
        Name: "spade"
        Transform {
          Location {
            Y: 10.7565432
          }
          Rotation {
          }
          Scale {
            X: 0.854565859
            Y: 0.854565859
            Z: 0.854565859
          }
        }
        ParentId: 13217005881212138607
        ChildIds: 7649260602628349965
        ChildIds: 8101268388257042492
        ChildIds: 7279905418013193575
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
        Id: 7649260602628349965
        Name: "Heart"
        Transform {
          Location {
            Y: 4.79815197
            Z: 1.55593872
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.714243889
            Y: 0.0191133581
            Z: 0.84688741
          }
        }
        ParentId: 3831528278070983890
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11757842166016445749
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
        Id: 8101268388257042492
        Name: "Card"
        Transform {
          Location {
            Y: -23.1178665
            Z: 1.22293091
          }
          Rotation {
            Pitch: 90
            Yaw: 178.734131
            Roll: 178.734131
          }
          Scale {
            X: 0.00908364728
            Y: 0.713532269
            Z: 0.0786479264
          }
        }
        ParentId: 3831528278070983890
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 7279905418013193575
        Name: "Heart"
        Transform {
          Location {
            Y: -53.6121178
            Z: 2.24465179
          }
          Rotation {
            Roll: -4.98187256
          }
          Scale {
            X: 0.349246204
            Y: 0.25
            Z: 0.00657237275
          }
        }
        ParentId: 3831528278070983890
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8927260937154618589
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
        Id: 1211264584371485751
        Name: "spade"
        Transform {
          Location {
            X: 40.0484619
            Y: 64.1260071
            Z: 0.425895691
          }
          Rotation {
          }
          Scale {
            X: 0.333668917
            Y: 0.333668917
            Z: 0.333668917
          }
        }
        ParentId: 13217005881212138607
        ChildIds: 17068261326052437496
        ChildIds: 14442889162915277999
        ChildIds: 13729992151053827599
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
        Id: 17068261326052437496
        Name: "Heart"
        Transform {
          Location {
            Y: 4.79815197
            Z: 1.55593872
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.714243889
            Y: 0.0191133581
            Z: 0.84688741
          }
        }
        ParentId: 1211264584371485751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11757842166016445749
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
        Id: 14442889162915277999
        Name: "Card"
        Transform {
          Location {
            Y: -23.1178665
            Z: 1.22293091
          }
          Rotation {
            Pitch: 90
            Yaw: 178.734131
            Roll: 178.734131
          }
          Scale {
            X: 0.00908364728
            Y: 0.713532269
            Z: 0.0786479264
          }
        }
        ParentId: 1211264584371485751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13729992151053827599
        Name: "Heart"
        Transform {
          Location {
            Y: -53.6121178
            Z: 2.24465179
          }
          Rotation {
            Roll: -4.98187256
          }
          Scale {
            X: 0.349246204
            Y: 0.25
            Z: 0.00657237275
          }
        }
        ParentId: 1211264584371485751
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8927260937154618589
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
        Id: 6925522641383501330
        Name: "spade"
        Transform {
          Location {
            X: -36.519104
            Y: -54.0987549
            Z: 1.3408432
          }
          Rotation {
          }
          Scale {
            X: 0.333668917
            Y: 0.333668917
            Z: 0.333668917
          }
        }
        ParentId: 13217005881212138607
        ChildIds: 9223295016537459996
        ChildIds: 518439926012995330
        ChildIds: 18138339657699513285
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
        Id: 9223295016537459996
        Name: "Heart"
        Transform {
          Location {
            Y: 4.79815197
            Z: 1.55593872
          }
          Rotation {
            Roll: -89.9999924
          }
          Scale {
            X: 0.714243889
            Y: 0.0191133581
            Z: 0.84688741
          }
        }
        ParentId: 6925522641383501330
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 11757842166016445749
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
        Id: 518439926012995330
        Name: "Card"
        Transform {
          Location {
            Y: -23.1178665
            Z: 1.22293091
          }
          Rotation {
            Pitch: 90
            Yaw: 178.734131
            Roll: 178.734131
          }
          Scale {
            X: 0.00908364728
            Y: 0.713532269
            Z: 0.0786479264
          }
        }
        ParentId: 6925522641383501330
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 18138339657699513285
        Name: "Heart"
        Transform {
          Location {
            Y: -53.6121178
            Z: 2.24465179
          }
          Rotation {
            Roll: -4.98187256
          }
          Scale {
            X: 0.349246204
            Y: 0.25
            Z: 0.00657237275
          }
        }
        ParentId: 6925522641383501330
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10184847056121543272
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 8927260937154618589
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
        Id: 18404258320311498525
        Name: "Card"
        Transform {
          Location {
            Z: -2.51171875
          }
          Rotation {
            Pitch: 90
            Roll: 8.24505615
          }
          Scale {
            X: 0.0164956376
            Y: 1.66368949
            Z: 1.20044756
          }
        }
        ParentId: 13217005881212138607
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 15449607076393427372
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
            BoundsScale: 1
          }
        }
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
      Id: 15449607076393427372
      Name: "Stucco Tintable"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_stucco_tint_001_uv"
      }
    }
    Assets {
      Id: 11757842166016445749
      Name: "Heart"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_heart_001"
      }
    }
    Assets {
      Id: 10184847056121543272
      Name: "Basic Material"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_pbr_material_001"
      }
    }
    Assets {
      Id: 8927260937154618589
      Name: "Prism - 3-Sided"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
}
