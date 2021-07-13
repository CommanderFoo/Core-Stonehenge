Assets {
  Id: 7301685750702353961
  Name: "Pickup Sub Collectable - Plate"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 3028825213074767551
      Objects {
        Id: 3028825213074767551
        Name: "Pickup Sub Collectable - Plate"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 16845918078398887905
        ChildIds: 14464263920043363006
        ChildIds: 96987639932561616
        ChildIds: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "cs:type"
            String: "sub_collectable_pickup"
          }
          Overrides {
            Name: "cs:collectable_id"
            Int: 1
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
        Id: 14464263920043363006
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -3.50106144
            Y: 1.9108777
            Z: -7.24212694
          }
          Rotation {
            Pitch: -0.0698864907
            Yaw: 172.609833
            Roll: -0.538909733
          }
          Scale {
            X: 0.44815138
            Y: 0.44815138
            Z: 0.0117807547
          }
        }
        ParentId: 3028825213074767551
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17739647103545179627
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
            Id: 5767887018392646708
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 96987639932561616
        Name: "Cone - Truncated Hollow Wide"
        Transform {
          Location {
            X: -3.50121808
            Y: 1.939533
            Z: -4.22380781
          }
          Rotation {
            Pitch: 0.0698864907
            Yaw: -7.39011669
            Roll: -179.46106
          }
          Scale {
            X: 0.543104529
            Y: 0.543104529
            Z: 0.0553001836
          }
        }
        ParentId: 3028825213074767551
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16609254708742162583
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
            Id: 1640380726409574787
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
        Id: 17805170954855391714
        Name: "Decorations"
        Transform {
          Location {
            X: -6.69446421
            Y: -2.91686869
            Z: -6.69744492
          }
          Rotation {
            Pitch: -0.0698864907
            Yaw: 172.609833
            Roll: -0.538909733
          }
          Scale {
            X: 0.175076142
            Y: 0.175076142
            Z: 0.175076142
          }
        }
        ParentId: 3028825213074767551
        ChildIds: 10740082418157160365
        ChildIds: 8126536758617830043
        ChildIds: 13598519381894809709
        ChildIds: 3454985693866688781
        ChildIds: 3581614122284958406
        ChildIds: 14674934228589309013
        ChildIds: 11068050083374278319
        ChildIds: 11698871117193847572
        ChildIds: 11635702656352694944
        ChildIds: 7986797901984997414
        ChildIds: 15940280893142414451
        ChildIds: 51993653191115725
        ChildIds: 9316837076039094662
        ChildIds: 5735670972984063845
        ChildIds: 8596778258201291059
        ChildIds: 6559584059812010341
        ChildIds: 16922498944310103327
        ChildIds: 10101363508679778424
        ChildIds: 10063061368263789056
        ChildIds: 3618866076873326310
        ChildIds: 11606284158251348120
        ChildIds: 11475972986930568759
        ChildIds: 2076274262406042863
        ChildIds: 14942648430089912080
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
        Id: 10740082418157160365
        Name: "Ring - Thin"
        Transform {
          Location {
            X: -14.5377197
            Y: -29.7212181
            Z: 5.59533501
          }
          Rotation {
          }
          Scale {
            X: 2.28858757
            Y: 2.28858757
            Z: 3.20717
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16609254708742162583
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12937136736430498393
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
        Id: 8126536758617830043
        Name: "Ring - Thin"
        Transform {
          Location {
            X: -14.5377197
            Y: -29.7212181
            Z: 5.59533501
          }
          Rotation {
          }
          Scale {
            X: 2.34943151
            Y: 2.34943151
            Z: 3.29243445
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 12619734866397112129
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 12937136736430498393
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
        Id: 13598519381894809709
        Name: "Tree Birch Bare 02"
        Transform {
          Location {
            X: -24.5280762
            Y: 51.4355278
            Z: 12.97789
          }
          Rotation {
            Roll: -89.9999771
          }
          Scale {
            X: 0.125966191
            Y: 1.77355908e-08
            Z: 0.130407766
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Leaves:id"
            AssetReference {
              Id: 1005880033037975833
            }
          }
          Overrides {
            Name: "ma:Nature_Trunk:id"
            AssetReference {
              Id: 12433524629825964104
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 16269810514286547111
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 3454985693866688781
        Name: "Cube"
        Transform {
          Location {
            X: 58.3894043
            Y: 1.46335602
            Z: 4.63734
          }
          Rotation {
          }
          Scale {
            X: 0.626616597
            Y: 0.326057374
            Z: 0.0200967398
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16283627743698469062
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 12095835209017042614
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3581614122284958406
        Name: "Decal Snow Patch"
        Transform {
          Location {
            X: -20.2109375
            Y: 74.4489594
            Z: 12.9615326
          }
          Rotation {
            Pitch: 0.0365688317
            Yaw: 147.941986
            Roll: 4.81581765e-06
          }
          Scale {
            X: 0.317061484
            Y: 0.141254976
            Z: 0.1
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0702026412
              G: 0.0657323897
              B: 0.496874958
              A: 1
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
            Id: 4374743839293854666
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 14674934228589309013
        Name: "Decal Snow Patch"
        Transform {
          Location {
            X: 25.2147217
            Y: 74.4489594
            Z: 12.9615326
          }
          Rotation {
            Pitch: 0.0365688317
            Yaw: 147.941971
            Roll: 4.81331608e-06
          }
          Scale {
            X: 0.317061484
            Y: 0.141254976
            Z: 0.1
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0702026412
              G: 0.0657323897
              B: 0.496874958
              A: 1
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
            Id: 4374743839293854666
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11068050083374278319
        Name: "Decal Snow Patch"
        Transform {
          Location {
            X: 25.2147217
            Y: 74.4489594
            Z: 12.9615326
          }
          Rotation {
            Pitch: 0.0365688317
            Yaw: 147.941971
            Roll: 4.81331608e-06
          }
          Scale {
            X: 0.317061484
            Y: 0.141254976
            Z: 0.1
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0702026412
              G: 0.0657323897
              B: 0.496874958
              A: 1
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
            Id: 4374743839293854666
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11698871117193847572
        Name: "Decal Snow Patch"
        Transform {
          Location {
            X: -66.2486572
            Y: 74.4489594
            Z: 12.9615326
          }
          Rotation {
            Pitch: 0.0365688317
            Yaw: -178.650604
            Roll: -3.10608152e-06
          }
          Scale {
            X: 0.317061484
            Y: 0.141254976
            Z: 0.1
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0702026412
              G: 0.0657323897
              B: 0.496874958
              A: 1
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
            Id: 4374743839293854666
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 11635702656352694944
        Name: "Cone - Truncated Hollow Concave"
        Transform {
          Location {
            X: 58.1221924
            Y: -9.71812248
            Z: 5.55984
          }
          Rotation {
            Roll: -89.9999847
          }
          Scale {
            X: 1
            Y: 0.0100001041
            Z: 0.336520493
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10954784389582105953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 4342837057178247829
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 7986797901984997414
        Name: "Grass Tall"
        Transform {
          Location {
            X: -6.12536621
            Y: 55.2716599
            Z: 6.72515869
          }
          Rotation {
            Roll: -89.9999771
          }
          Scale {
            X: 0.571995556
            Y: 0.00069992285
            Z: 0.387358218
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 1302717969972071670
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13839198471768577024
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
        Id: 15940280893142414451
        Name: "Grass Tall"
        Transform {
          Location {
            X: -57.4034424
            Y: -18.2349815
            Z: 12.8656693
          }
          Rotation {
            Roll: -89.9999771
          }
          Scale {
            X: 0.404099435
            Y: 0.000699924247
            Z: 0.276904434
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 1302717969972071670
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13839198471768577024
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 51993653191115725
        Name: "Grass Tall"
        Transform {
          Location {
            X: -57.4034424
            Y: -71.7009506
            Z: 12.8656616
          }
          Rotation {
            Roll: -89.9999771
          }
          Scale {
            X: 0.404099435
            Y: 0.000699924247
            Z: 0.276904434
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 1302717969972071670
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13839198471768577024
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 9316837076039094662
        Name: "Grass Tall"
        Transform {
          Location {
            X: 8.1229248
            Y: -46.3436966
            Z: 12.8656654
          }
          Rotation {
            Roll: -89.9999695
          }
          Scale {
            X: 0.404099435
            Y: 0.000699924247
            Z: 0.276904434
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Nature_Grass:id"
            AssetReference {
              Id: 1302717969972071670
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 13839198471768577024
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 5735670972984063845
        Name: "Group"
        Transform {
          Location {
            X: -75.8226318
            Y: 60.5366478
            Z: 2.05344
          }
          Rotation {
            Pitch: -90
            Yaw: 90
            Roll: 169.031311
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17805170954855391714
        ChildIds: 3509669312736275637
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
        Id: 3509669312736275637
        Name: "Stone Arch 3m"
        Transform {
          Location {
            X: -3.88940239
            Y: -16.9632568
            Z: -12.7171421
          }
          Rotation {
          }
          Scale {
            X: 0.00999996625
            Y: 0.109724492
            Z: 0.164922282
          }
        }
        ParentId: 5735670972984063845
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 3741590744394567853
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 15283547736825358034
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 8596778258201291059
        Name: "Decal Snow Patch"
        Transform {
          Location {
            X: 52.3625488
            Y: 30.9877892
            Z: 12.9615345
          }
          Rotation {
            Pitch: 0.036562
            Yaw: 147.94194
            Roll: -4.10128223e-06
          }
          Scale {
            X: 0.317061484
            Y: 0.141254976
            Z: 0.1
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "bp:Color"
            Color {
              R: 0.0702026412
              G: 0.0657323897
              B: 0.496874958
              A: 1
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
            Id: 4374743839293854666
          }
          TeamSettings {
          }
          DecalBP {
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 6559584059812010341
        Name: "Bird"
        Transform {
          Location {
            X: 25.0809326
            Y: -85.0521698
            Z: 5.55980873
          }
          Rotation {
            Pitch: 6.83018879e-06
            Yaw: 27.0169353
            Roll: 4.06794561e-06
          }
          Scale {
            X: -1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17805170954855391714
        ChildIds: 6477823807065345648
        ChildIds: 1314317818715748531
        ChildIds: 8189883916855818914
        ChildIds: 9199683253963522846
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
        Id: 6477823807065345648
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: -4.6124
            Y: 0.227214813
            Z: 2.50779724
          }
          Rotation {
            Yaw: -79.0591125
          }
          Scale {
            X: 0.42435357
            Y: 0.471430928
            Z: 0.0648389
          }
        }
        ParentId: 6559584059812010341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 11185368716601234392
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1314317818715748531
        Name: "Bone Human Hand 01"
        Transform {
          Location {
            X: 3.00325394
            Y: -0.794132233
          }
          Rotation {
            Pitch: 83.8791885
            Yaw: -166.5121
            Roll: 103.47168
          }
          Scale {
            X: 0.177926168
            Y: 1.29853344
            Z: 0.637583911
          }
        }
        ParentId: 6559584059812010341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4550625331557864775
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8189883916855818914
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 8.4955864
            Y: -0.129463196
            Z: 0.287826538
          }
          Rotation {
            Pitch: 5.32146835
            Yaw: -80.4168
            Roll: -28.7868042
          }
          Scale {
            X: 0.42435351
            Y: 0.291913807
            Z: 0.0648389235
          }
        }
        ParentId: 6559584059812010341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 11185368716601234392
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 9199683253963522846
        Name: "Cone - Bullet"
        Transform {
          Location {
            X: -6.88643646
            Y: 0.696380615
            Z: 0.6948452
          }
          Rotation {
            Pitch: 82.0633926
            Yaw: 163.558411
            Roll: 180
          }
          Scale {
            X: 0.01
            Y: 0.0175993331
            Z: 0.01
          }
        }
        ParentId: 6559584059812010341
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 2264041107168619230
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 16922498944310103327
        Name: "Bird"
        Transform {
          Location {
            X: 42.0806885
            Y: -88.8834915
            Z: 5.55980682
          }
          Rotation {
            Yaw: -10.2776737
            Roll: 3.82359566e-08
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17805170954855391714
        ChildIds: 17937846430241585275
        ChildIds: 10613967069211750457
        ChildIds: 8335226135311698806
        ChildIds: 1564955291508945895
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
        Id: 17937846430241585275
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: -4.6124
            Y: 0.227214813
            Z: 2.50779724
          }
          Rotation {
            Yaw: -79.0591125
          }
          Scale {
            X: 0.42435357
            Y: 0.471430928
            Z: 0.0648389
          }
        }
        ParentId: 16922498944310103327
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 11185368716601234392
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 10613967069211750457
        Name: "Bone Human Hand 01"
        Transform {
          Location {
            X: 3.00325394
            Y: -0.794132233
          }
          Rotation {
            Pitch: 83.8791885
            Yaw: -166.5121
            Roll: 103.47168
          }
          Scale {
            X: 0.177926168
            Y: 1.29853344
            Z: 0.637583911
          }
        }
        ParentId: 16922498944310103327
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 4550625331557864775
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 8335226135311698806
        Name: "Bone Human Foot 01"
        Transform {
          Location {
            X: 8.4955864
            Y: -0.129463196
            Z: 0.287826538
          }
          Rotation {
            Pitch: 5.32146835
            Yaw: -80.4168
            Roll: -28.7868042
          }
          Scale {
            X: 0.42435351
            Y: 0.291913807
            Z: 0.0648389235
          }
        }
        ParentId: 16922498944310103327
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 11185368716601234392
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 1564955291508945895
        Name: "Cone - Bullet"
        Transform {
          Location {
            X: -6.88643646
            Y: 0.696380615
            Z: 0.6948452
          }
          Rotation {
            Pitch: 82.0633926
            Yaw: 163.558411
            Roll: 180
          }
          Scale {
            X: 0.01
            Y: 0.0175993331
            Z: 0.01
          }
        }
        ParentId: 16922498944310103327
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 17882096710197449043
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 2264041107168619230
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 10101363508679778424
        Name: "Cone - Truncated Hollow Concave"
        Transform {
          Location {
            X: 58.1221924
            Y: -36.1236382
            Z: 5.55983734
          }
          Rotation {
            Roll: -89.9999847
          }
          Scale {
            X: 0.545200229
            Y: 0.0100001479
            Z: 0.189564615
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10954784389582105953
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 4342837057178247829
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableDistanceFieldLighting: true
          DisableCastShadows: true
          InteractWithTriggers: true
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
        Id: 10063061368263789056
        Name: "Cube"
        Transform {
          Location {
            X: 58.3894043
            Y: -26.9049816
            Z: 4.63731194
          }
          Rotation {
          }
          Scale {
            X: 0.272146404
            Y: 0.267184854
            Z: 0.0200967379
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16283627743698469062
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 12095835209017042614
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 3618866076873326310
        Name: "Cylinder - Rounded Bottom-Aligned"
        Transform {
          Location {
            X: -14.5377197
            Y: -29.7212219
            Z: 1.11416769
          }
          Rotation {
          }
          Scale {
            X: 1.76326931
            Y: 1.76327741
            Z: -0.0153057417
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7884880429774773186
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
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
            Id: 6747614045051753376
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 11606284158251348120
        Name: "Ring - Thin"
        Transform {
          Location {
            X: -14.5377197
            Y: -29.7209587
            Z: -3.62744141
          }
          Rotation {
          }
          Scale {
            X: 0.86510247
            Y: 0.86510247
            Z: 1.21233439
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16609254708742162583
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12937136736430498393
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
        Id: 11475972986930568759
        Name: "Text 05: B"
        Transform {
          Location {
            X: -15.9371338
            Y: 4.81066847
            Z: -2.30314636
          }
          Rotation {
            Yaw: -179.999985
            Roll: 89.9999542
          }
          Scale {
            X: 0.104537793
            Y: 0.0887641385
            Z: 0.108602762
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
        }
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
            Id: 12052838310735404392
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 2076274262406042863
        Name: "Text 05: C"
        Transform {
          Location {
            X: -29.2701416
            Y: -0.454422
            Z: -2.30315089
          }
          Rotation {
            Pitch: -3.05175781e-05
            Yaw: -179.999985
            Roll: 89.9999542
          }
          Scale {
            X: 0.104537793
            Y: 0.0887641385
            Z: 0.108602762
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Font.Bevel:smart"
            Bool: false
          }
        }
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
            Id: 5771179548319610400
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
            BoundsScale: 1
          }
        }
      }
      Objects {
        Id: 14942648430089912080
        Name: "Ring - Thin"
        Transform {
          Location {
            X: -14.5377197
            Y: -29.7211723
            Z: -1.75820732
          }
          Rotation {
          }
          Scale {
            X: 2.25
            Y: 2.25
            Z: 2.41589212
          }
        }
        ParentId: 17805170954855391714
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16609254708742162583
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12937136736430498393
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
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
      Id: 5767887018392646708
      Name: "Cylinder - Rounded Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_001"
      }
    }
    Assets {
      Id: 1640380726409574787
      Name: "Cone - Truncated Hollow Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_004"
      }
    }
    Assets {
      Id: 16609254708742162583
      Name: "Plastic Shiny"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_shiny_001"
      }
    }
    Assets {
      Id: 12937136736430498393
      Name: "Ring - Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_003"
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
      Id: 16269810514286547111
      Name: "Tree Birch Bare 02"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tree_birch_004"
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    Assets {
      Id: 4374743839293854666
      Name: "Decal Snow Patch"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "bp_decal_snow_patch_001"
      }
    }
    Assets {
      Id: 4342837057178247829
      Name: "Cone - Truncated Hollow Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_convex_001"
      }
    }
    Assets {
      Id: 13839198471768577024
      Name: "Grass Tall"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_grass_generic_001"
      }
    }
    Assets {
      Id: 15283547736825358034
      Name: "Stone Arch 3m"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_stone-arch_6m_002"
      }
    }
    Assets {
      Id: 11185368716601234392
      Name: "Bone Human Foot 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_foot_01_ref"
      }
    }
    Assets {
      Id: 4550625331557864775
      Name: "Bone Human Hand 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_hand_01_ref"
      }
    }
    Assets {
      Id: 2264041107168619230
      Name: "Cone - Bullet"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bullet_001"
      }
    }
    Assets {
      Id: 6747614045051753376
      Name: "Cylinder - Bottom-Aligned"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_001"
      }
    }
    Assets {
      Id: 12052838310735404392
      Name: "Text 05: B"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_001"
      }
    }
    Assets {
      Id: 5771179548319610400
      Name: "Text 05: C"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "F6_Text_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 92
}
