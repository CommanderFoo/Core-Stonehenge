Assets {
  Id: 12793194630393941143
  Name: "Pickup Sub Collectable - Pencil"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 4264523243837106214
      Objects {
        Id: 4264523243837106214
        Name: "Pickup Sub Collectable - Pencil"
        Transform {
          Scale {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 653659697640620996
        ChildIds: 13103738382631180350
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
        Id: 653659697640620996
        Name: "Pipe - 8-Sided Thin"
        Transform {
          Location {
            X: 0.327502519
            Y: 0.175437018
            Z: 39.1661263
          }
          Rotation {
            Pitch: -0.124022566
            Yaw: -48.6282196
            Roll: 0.529074669
          }
          Scale {
            X: 0.0747477934
            Y: 0.0747477934
            Z: 0.78896296
          }
        }
        ParentId: 4264523243837106214
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3561136190705664359
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.48333323
              G: 2.30471244e-07
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
            Id: 13080073069178962316
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13103738382631180350
        Name: "Lead Pencil"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -0.124023438
            Yaw: -48.6282349
            Roll: 0.529074609
          }
          Scale {
            X: 0.0747477934
            Y: 0.0747477934
            Z: 0.0747477934
          }
        }
        ParentId: 4264523243837106214
        ChildIds: 2822628428706466531
        ChildIds: 4610872376033682172
        ChildIds: 14402447243770171157
        ChildIds: 9099751226808628333
        ChildIds: 224729813543213964
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
        Id: 2822628428706466531
        Name: "Group"
        Transform {
          Location {
            X: -0.368408203
            Y: -0.0456542969
            Z: 1004.62903
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13103738382631180350
        ChildIds: 6779141182328578771
        ChildIds: 9968136668863113811
        ChildIds: 16367677299206845641
        ChildIds: 9723385370526445015
        ChildIds: 6129233261538723630
        ChildIds: 11136939302575062936
        ChildIds: 16545505067223349979
        ChildIds: 17141699829121082066
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
        Id: 6779141182328578771
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: -0.254383087
            Y: 44.7692833
            Z: 7.88879395
          }
          Rotation {
            Pitch: 0.209577516
            Yaw: -179.470184
            Roll: -179.769073
          }
          Scale {
            X: 0.377581656
            Y: 0.55585134
            Z: 1.25750768
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 9968136668863113811
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: 45.3068848
            Y: -0.274383545
            Z: 19.0706787
          }
          Rotation {
            Pitch: -1.71819544
            Yaw: 90.5219498
            Roll: -179.768951
          }
          Scale {
            X: 0.376834393
            Y: 0.555850267
            Z: 0.925907195
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16367677299206845641
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: 0.255615234
            Y: -44.3050232
            Z: 32.8944092
          }
          Rotation {
            Pitch: -0.270359367
            Yaw: -0.134582475
            Roll: -179.79306
          }
          Scale {
            X: 0.39732936
            Y: 0.793549716
            Z: 0.437389731
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 9723385370526445015
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: -44.4449463
            Y: 0.186859131
            Z: 24.4996338
          }
          Rotation {
            Pitch: -1.71819544
            Yaw: -89.4780502
            Roll: -179.768936
          }
          Scale {
            X: 0.377147347
            Y: 0.698780596
            Z: 0.686744809
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 6129233261538723630
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: -32.1724625
            Y: 31.583992
            Z: 24.6346436
          }
          Rotation {
            Pitch: -0.459991455
            Yaw: -134.876724
            Roll: -179.756775
          }
          Scale {
            X: 0.42307952
            Y: 0.562301636
            Z: 0.68674314
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11136939302575062936
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: -32.0395508
            Y: -31.8554688
            Z: 21.8105469
          }
          Rotation {
            Pitch: -1.71819544
            Yaw: -44.478
            Roll: -179.768936
          }
          Scale {
            X: 0.398215085
            Y: 0.55584985
            Z: 0.807266295
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16545505067223349979
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: 31.357666
            Y: -31.9057922
            Z: 25.8341064
          }
          Rotation {
            Pitch: -1.71819544
            Yaw: 45.5220108
            Roll: -179.768936
          }
          Scale {
            X: 0.376834184
            Y: 0.555852175
            Z: 0.686745226
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 17141699829121082066
        Name: "Street Sign - Triangle"
        Transform {
          Location {
            X: 31.6981201
            Y: 31.4684753
            Z: 22.6021729
          }
          Rotation {
            Pitch: 0.404026151
            Yaw: 135.53064
            Roll: -179.769
          }
          Scale {
            X: 0.377146542
            Y: 0.55585444
            Z: 0.811138213
          }
        }
        ParentId: 2822628428706466531
        UnregisteredParameters {
          Overrides {
            Name: "ma:Sign_Stripe:id"
            AssetReference {
              Id: 16373144487511314206
            }
          }
          Overrides {
            Name: "ma:Sign_Face:id"
            AssetReference {
              Id: 7366418437736113132
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 13590852762220197411
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
            Id: 4543315673208588897
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 4610872376033682172
        Name: "Cone"
        Transform {
          Location {
            X: -1.43701172
            Z: 1116.77063
          }
          Rotation {
            Yaw: -35.4388733
          }
          Scale {
            X: 0.416640192
            Y: 0.416640192
            Z: 1.87337244
          }
        }
        ParentId: 13103738382631180350
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3561136190705664359
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.0200000014
              G: 0.0200000014
              B: 0.0200000014
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
            Id: 2305428502430700492
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14402447243770171157
        Name: "Cone"
        Transform {
          Location {
            X: -0.13671875
            Y: 0.0982971191
            Z: 1049.09534
          }
          Rotation {
          }
          Scale {
            X: 1.02003419
            Y: 1.02560318
            Z: 1.49287057
          }
        }
        ParentId: 13103738382631180350
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16373144487511314206
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
            Id: 12617939985168483360
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 9099751226808628333
        Name: "eraser"
        Transform {
          Location {
            X: -1.44907427
            Y: -1.64525378
            Z: -11.334137
          }
          Rotation {
            Yaw: 48.6276703
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13103738382631180350
        ChildIds: 11835350483410442819
        ChildIds: 12413443768045550499
        ChildIds: 4688293527684916235
        ChildIds: 4366051931761024912
        ChildIds: 3151235590128908432
        ChildIds: 16237671364906575732
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
        Id: 11835350483410442819
        Name: "Ring - Beveled"
        Transform {
          Location {
            Z: 114.489838
          }
          Rotation {
          }
          Scale {
            X: 1.21754503
            Y: 1.21754503
            Z: 1.21754503
          }
        }
        ParentId: 9099751226808628333
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9497951731488909799
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
            Id: 7890377554252778826
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 12413443768045550499
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1.13687646
            Y: 1.13687646
            Z: 0.817212582
          }
        }
        ParentId: 9099751226808628333
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
              R: 0.629
              G: 0.248454988
              B: 0.543314099
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
            Id: 5767887018392646708
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 4688293527684916235
        Name: "Ring - Beveled"
        Transform {
          Location {
            Z: 168.674011
          }
          Rotation {
          }
          Scale {
            X: 1.21754503
            Y: 1.21754503
            Z: 1.21754503
          }
        }
        ParentId: 9099751226808628333
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9497951731488909799
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
            Id: 7890377554252778826
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 4366051931761024912
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            Z: 70.9068909
          }
          Rotation {
          }
          Scale {
            X: 1.12518895
            Y: 1.12518895
            Z: 1.12518895
          }
        }
        ParentId: 9099751226808628333
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9497951731488909799
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
            Id: 5767887018392646708
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3151235590128908432
        Name: "Ring - Beveled"
        Transform {
          Location {
            Z: 80.5947266
          }
          Rotation {
          }
          Scale {
            X: 1.21754503
            Y: 1.21754503
            Z: 1.21754503
          }
        }
        ParentId: 9099751226808628333
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9497951731488909799
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
            Id: 7890377554252778826
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16237671364906575732
        Name: "Ring - Beveled"
        Transform {
          Location {
            Z: 134.084412
          }
          Rotation {
          }
          Scale {
            X: 1.21754503
            Y: 1.21754503
            Z: 1.21754503
          }
        }
        ParentId: 9099751226808628333
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 9497951731488909799
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
            Id: 7890377554252778826
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 224729813543213964
        Name: "Sig"
        Transform {
          Location {
            X: -37.4650116
            Y: 19.8425293
            Z: 301.045532
          }
          Rotation {
            Pitch: -90
            Yaw: -26.565033
            Roll: 75.1926727
          }
          Scale {
            X: 0.286839902
            Y: 0.286839902
            Z: 0.286839902
          }
        }
        ParentId: 13103738382631180350
        ChildIds: 12727114039366905509
        ChildIds: 5307610858220409851
        ChildIds: 14829817821688254196
        ChildIds: 3479307629303036100
        ChildIds: 13030479100929795731
        ChildIds: 1964652736273909919
        ChildIds: 16001577232092490834
        ChildIds: 8714259414654657438
        ChildIds: 1205117178968969178
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
        Id: 12727114039366905509
        Name: "Text 03: A"
        Transform {
          Location {
            X: 275.693085
            Y: -1.48350239
            Z: 2.57721925
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 17757758034467358373
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 5307610858220409851
        Name: "Text 03: G"
        Transform {
          Location {
            X: -144.697388
            Y: 6.09615707
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 16361915178408140089
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14829817821688254196
        Name: "Text 03: G"
        Transform {
          Location {
            X: -235.040649
            Y: 6.09615707
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 16361915178408140089
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3479307629303036100
        Name: "Text 03: R"
        Transform {
          Location {
            X: -47.3294334
            Y: -1.58747721
            Z: 5.00001049
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 2794636122271782815
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 13030479100929795731
        Name: "Text 03: I"
        Transform {
          Location {
            X: 42.4453125
            Y: -0.247501373
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 12345922736146002760
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1964652736273909919
        Name: "Text 03: P"
        Transform {
          Location {
            X: 83.4210815
            Y: 1.09615707
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 6089790138019219477
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16001577232092490834
        Name: "Text 03: I"
        Transform {
          Location {
            X: 158.098083
            Y: 1.09615707
            Z: 5
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 12345922736146002760
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8714259414654657438
        Name: "Text 03: N"
        Transform {
          Location {
            X: 191.258911
            Y: 0.104935341
            Z: 4.99996185
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 659547049175455346
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1205117178968969178
        Name: "Text 03: A"
        Transform {
          Location {
            X: -323.849243
            Y: -0.624569416
            Z: 0.000240126639
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 224729813543213964
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 2732844152825097212
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 2732844152825097212
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
            Id: 17757758034467358373
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
            BoundsScale: 1
          }
        }
      }
    }
    Assets {
      Id: 13080073069178962316
      Name: "Prism - 8-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prism_octagon_hq_001"
      }
    }
    Assets {
      Id: 4543315673208588897
      Name: "Street Sign - Triangle"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_street-sign_triangle_001"
      }
    }
    Assets {
      Id: 13590852762220197411
      Name: "Wood Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_wood_raw_001_uv"
      }
    }
    Assets {
      Id: 2305428502430700492
      Name: "Cone - Truncated Narrow"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_002"
      }
    }
    Assets {
      Id: 12617939985168483360
      Name: "Pyramid - 8-Sided Polished"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_pyramid_eighsided_hq_001"
      }
    }
    Assets {
      Id: 7890377554252778826
      Name: "Ring - Beveled"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_ring_faceted_001"
      }
    }
    Assets {
      Id: 9497951731488909799
      Name: "Metal Basic 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_basic_001"
      }
    }
    Assets {
      Id: 5767887018392646708
      Name: "Cylinder - Rounded Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_001"
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
      Id: 17757758034467358373
      Name: "Text 03: A"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_000"
      }
    }
    Assets {
      Id: 2732844152825097212
      Name: "Metal Gold 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_001"
      }
    }
    Assets {
      Id: 16361915178408140089
      Name: "Text 03: G"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_006"
      }
    }
    Assets {
      Id: 2794636122271782815
      Name: "Text 03: R"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_017"
      }
    }
    Assets {
      Id: 12345922736146002760
      Name: "Text 03: I"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_008"
      }
    }
    Assets {
      Id: 6089790138019219477
      Name: "Text 03: P"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_015"
      }
    }
    Assets {
      Id: 659547049175455346
      Name: "Text 03: N"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F5_Text_013"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 85
}
