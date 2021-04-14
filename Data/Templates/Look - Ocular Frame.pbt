Assets {
  Id: 9541816162618524212
  Name: "Look - Ocular Frame"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 423913690008197879
      Objects {
        Id: 423913690008197879
        Name: "Look - Ocular Pulse Staff"
        Transform {
          Scale {
            X: 1.71071279
            Y: 1.71071279
            Z: 1.71071279
          }
        }
        ParentId: 12936176732858694209
        ChildIds: 14051516703090929795
        ChildIds: 3604963710095701219
        ChildIds: 10640314610302924699
        ChildIds: 4691694360587740572
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "look"
          }
          Overrides {
            Name: "cs:main"
            ObjectReference {
              SubObjectId: 10640314610302924699
            }
          }
          Overrides {
            Name: "cs:alt"
            ObjectReference {
              SubObjectId: 14051516703090929795
            }
          }
          Overrides {
            Name: "cs:use_alt"
            Bool: false
          }
          Overrides {
            Name: "cs:quest_item_id"
            Int: 1
          }
          Overrides {
            Name: "cs:name"
            String: "Ocular Pulse Staff"
          }
          Overrides {
            Name: "cs:use_alt:isrep"
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 14051516703090929795
        Name: "Alt"
        Transform {
          Location {
          }
          Rotation {
            Roll: -0.203033447
          }
          Scale {
            X: 0.473705858
            Y: 0.473705858
            Z: 0.473705858
          }
        }
        ParentId: 423913690008197879
        ChildIds: 13674044773046919717
        ChildIds: 12538246071151777204
        ChildIds: 9745004786381181544
        ChildIds: 533184500063298630
        ChildIds: 13049168177444840170
        ChildIds: 4974386023634894256
        ChildIds: 14677255105346669907
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 13674044773046919717
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -1.40951538
            Y: 157.186844
            Z: 3.47497559
          }
          Rotation {
            Pitch: -90
            Yaw: 180
            Roll: 90
          }
          Scale {
            X: 0.135950908
            Y: 0.135950908
            Z: 1.89438128
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8260475755799581342
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
            Id: 5767887018392646708
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
        Id: 12538246071151777204
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -1.40951538
            Y: -24.4512024
            Z: 3.47494507
          }
          Rotation {
            Pitch: -90
            Yaw: 90
            Roll: 180
          }
          Scale {
            X: 0.306292742
            Y: 0.306296289
            Z: 0.196605638
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 828021840759750774
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
        Id: 9745004786381181544
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 1.55334473
            Y: -30.0632
          }
          Rotation {
            Pitch: 0.0566222668
            Yaw: 24.1331673
            Roll: -90.1263733
          }
          Scale {
            X: 0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 533184500063298630
        Name: "Text 05: 7"
        Transform {
          Location {
            X: -5.08740234
            Y: -30.0632324
            Z: -1.52587891e-05
          }
          Rotation {
            Yaw: -24.8302307
            Roll: -90
          }
          Scale {
            X: -0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 13049168177444840170
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 3.17642212
            Y: -30.0632172
            Z: 0.0662088394
          }
          Rotation {
            Pitch: 107.85334
            Yaw: 90
          }
          Scale {
            X: -0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 4974386023634894256
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 3.17642212
            Y: -30.0632172
            Z: 6.70695496
          }
          Rotation {
            Pitch: 67.8228226
            Yaw: 90
          }
          Scale {
            X: 0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 14677255105346669907
        Name: "Sphere"
        Transform {
          Location {
            Y: -69.1636887
            Z: 2.28881836e-05
          }
          Rotation {
            Roll: -90
          }
          Scale {
            X: 0.451084942
            Y: 0.451084942
            Z: 0.451084942
          }
        }
        ParentId: 14051516703090929795
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 828021840759750774
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
        Id: 3604963710095701219
        Name: "Collider"
        Transform {
          Location {
            X: -0.666992188
            Y: 74.4604492
            Z: 1.64611816
          }
          Rotation {
            Pitch: -90
            Yaw: 26.565033
            Roll: -116.565018
          }
          Scale {
            X: 0.122049771
            Y: 0.63065052
            Z: 1.07895243
          }
        }
        ParentId: 423913690008197879
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12594834276768492639
            }
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        CoreMesh {
          MeshAsset {
            Id: 5767887018392646708
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
        Id: 10640314610302924699
        Name: "Main"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.473705858
            Y: 0.473705858
            Z: 0.473705858
          }
        }
        ParentId: 423913690008197879
        ChildIds: 7081649396504451976
        ChildIds: 2551839547138121019
        ChildIds: 12924422565623836983
        ChildIds: 17027324054046063332
        ChildIds: 956624046835569561
        ChildIds: 8699291077636264756
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
        Id: 7081649396504451976
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -1.40951538
            Y: 157.186844
            Z: 3.47497559
          }
          Rotation {
            Pitch: -90
            Yaw: 180
            Roll: 90
          }
          Scale {
            X: 0.135950908
            Y: 0.135950908
            Z: 1.89438128
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 8260475755799581342
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.841159403
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 2.47444344
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.185763672
              G: 0.162308857
              B: 0.157705575
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
            Id: 5767887018392646708
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
        Id: 2551839547138121019
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -1.40951538
            Y: -24.4512024
            Z: 3.47494507
          }
          Rotation {
            Pitch: -90
            Yaw: 90
            Roll: 180
          }
          Scale {
            X: 0.306292742
            Y: 0.306296289
            Z: 0.196605638
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 828021840759750774
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.011764707
              G: 0.0901960805
              B: 0.0980392247
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
        Id: 12924422565623836983
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 1.55334473
            Y: -30.0632
          }
          Rotation {
            Pitch: 0.0566222668
            Yaw: 24.1331673
            Roll: -90.1263733
          }
          Scale {
            X: 0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 17027324054046063332
        Name: "Text 05: 7"
        Transform {
          Location {
            X: -5.08740234
            Y: -30.0632324
            Z: -1.52587891e-05
          }
          Rotation {
            Yaw: -24.8302307
            Roll: -90
          }
          Scale {
            X: -0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 956624046835569561
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 3.17642212
            Y: -30.0632172
            Z: 0.0662088394
          }
          Rotation {
            Pitch: 107.85334
            Yaw: 90
          }
          Scale {
            X: -0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 8699291077636264756
        Name: "Text 05: 7"
        Transform {
          Location {
            X: 3.17642212
            Y: -30.0632172
            Z: 6.70695496
          }
          Rotation {
            Pitch: 67.8228226
            Yaw: 90
          }
          Scale {
            X: 0.396493912
            Y: 0.396493912
            Z: 0.396493912
          }
        }
        ParentId: 10640314610302924699
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:id"
            AssetReference {
              Id: 8845395211333619681
            }
          }
          Overrides {
            Name: "ma:Font.Sides:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Font.Faces:id"
            AssetReference {
              Id: 8845395211333619681
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
            Id: 16149953234805841189
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
        Id: 4691694360587740572
        Name: "Outline Effect"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 423913690008197879
        ChildIds: 2669866753720119051
        ChildIds: 9259399789981512532
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 2669866753720119051
        Name: "Outline Object"
        Transform {
          Location {
            Z: 3.05175781e-05
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4691694360587740572
        UnregisteredParameters {
          Overrides {
            Name: "bp:Hierarchy Discovery Depth"
            Int: 2
          }
          Overrides {
            Name: "bp:Thickness"
            Float: 2
          }
          Overrides {
            Name: "bp:Color A"
            Color {
              R: 1
              G: 1
              B: 0.00400000811
            }
          }
          Overrides {
            Name: "bp:Dynamic Thickness"
            Bool: false
          }
          Overrides {
            Name: "bp:Outline Channel"
            Int: 1
          }
          Overrides {
            Name: "bp:Max Distance Thickness"
            Float: 2.32934117
          }
          Overrides {
            Name: "bp:Max Distance"
            Float: 16.9642715
          }
          Overrides {
            Name: "bp:Min Distance"
            Float: 5.9683795
          }
          Overrides {
            Name: "bp:Show Behind Objects"
            Bool: false
          }
          Overrides {
            Name: "bp:Solid Behind Objects"
            Bool: false
          }
          Overrides {
            Name: "bp:Multi-Color"
            Bool: false
          }
          Overrides {
            Name: "bp:Enabled"
            Bool: true
          }
          Overrides {
            Name: "bp:Object To Outline"
            ObjectReference {
              SubObjectId: 423913690008197879
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Blueprint {
          BlueprintAsset {
            Id: 16347485244050219597
          }
          TeamSettings {
          }
        }
      }
      Objects {
        Id: 9259399789981512532
        Name: "Outline_Distance_Checker_Client"
        Transform {
          Location {
            X: -724.208618
            Y: 1209.90918
            Z: -0.761392593
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4691694360587740572
        UnregisteredParameters {
          Overrides {
            Name: "cs:outline"
            ObjectReference {
              SubObjectId: 2669866753720119051
            }
          }
          Overrides {
            Name: "cs:show_distance"
            Float: 800
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Script {
          ScriptAsset {
            Id: 3568247838801392745
          }
        }
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
      Id: 16526650515744518887
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 16149953234805841189
      Name: "Text 05: 7"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_033"
      }
    }
    Assets {
      Id: 12619734866397112129
      Name: "Metal Old Beaten Gold 02"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_metal_gold_002"
      }
    }
    Assets {
      Id: 8845395211333619681
      Name: "Energy Tube Glow"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "Energy_Tube_Glow"
      }
    }
    Assets {
      Id: 12594834276768492639
      Name: "Amethyst"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "fxmi_amethyst"
      }
    }
    Assets {
      Id: 16347485244050219597
      Name: "Outline Object"
      PlatformAssetType: 20
      PrimaryAsset {
        AssetType: "BlueprintAssetRef"
        AssetId: "fxbp_local_outline"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 81
}
