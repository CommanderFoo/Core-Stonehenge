Assets {
  Id: 8791256523911820058
  Name: "Campfire & Cooking Pot"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 18415970275679975660
      Objects {
        Id: 18415970275679975660
        Name: "Campfire & Stove"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 10464620582411169789
        ChildIds: 6015517850887023665
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
          IsFilePartition: true
          FilePartitionName: "COFFEE SPAWNER_2"
        }
      }
      Objects {
        Id: 10464620582411169789
        Name: "COFFEE SPAWNER"
        Transform {
          Location {
            X: 2.68164063
            Y: -10.7001953
            Z: 64.9919434
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18415970275679975660
        ChildIds: 9402377602572051421
        ChildIds: 5551701880535723068
        ChildIds: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "cs:RespawnDelay"
            Float: 1
          }
          Overrides {
            Name: "cs:RoundStartSpawn"
            Bool: false
          }
          Overrides {
            Name: "cs:Template1"
            AssetReference {
              Id: 8384777989749137067
            }
          }
          Overrides {
            Name: "cs:Template2"
            AssetReference {
              Id: 8384777989749137067
            }
          }
          Overrides {
            Name: "cs:RespawnDelay:tooltip"
            String: "Delay after the object has been collected, before the next object is spawned."
          }
          Overrides {
            Name: "cs:RoundStartSpawn:tooltip"
            String: "If true, will spawn an object at the start of a round."
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
        Folder {
          IsGroup: true
        }
      }
      Objects {
        Id: 9402377602572051421
        Name: "UniversalObjectSpawner"
        Transform {
          Location {
            X: 4.07519531
            Y: 22.5615234
            Z: 1.18994141
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10464620582411169789
        UnregisteredParameters {
          Overrides {
            Name: "cs:Root"
            ObjectReference {
              SubObjectId: 10464620582411169789
            }
          }
          Overrides {
            Name: "cs:ShowHideObject"
            ObjectReference {
              SubObjectId: 5551701880535723068
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
        Script {
          ScriptAsset {
            Id: 3643196000533729980
          }
        }
      }
      Objects {
        Id: 5551701880535723068
        Name: "Cylinder"
        Transform {
          Location {
            X: -6.92089844
            Y: 7.29589844
            Z: -1.37719727
          }
          Rotation {
            Yaw: -3.05175781e-05
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 10464620582411169789
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4722912119346492871
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: true
          }
        }
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
        CoreMesh {
          MeshAsset {
            Id: 7542207994756963230
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableReceiveDecals: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3996974960228464521
        Name: "CampFire 2"
        Transform {
          Location {
            X: -19.9111328
            Y: 12.1425781
            Z: -129.54248
          }
          Rotation {
          }
          Scale {
            X: 2
            Y: 2
            Z: 2
          }
        }
        ParentId: 10464620582411169789
        ChildIds: 4097228590904311829
        ChildIds: 18298330456787678987
        ChildIds: 577666287195927368
        ChildIds: 2625505556034586183
        ChildIds: 8089473945251727236
        ChildIds: 9114361807061927102
        ChildIds: 14023749852981561065
        ChildIds: 15583337666613535085
        ChildIds: 5962581419675591469
        ChildIds: 15102075283471792123
        ChildIds: 3387283540095763122
        ChildIds: 13543754196939094724
        ChildIds: 16074265980956077012
        ChildIds: 177405609188271683
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
            Id: 12333073097347897071
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 4097228590904311829
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -21.9414063
            Y: 0.16822052
            Z: -20.3121262
          }
          Rotation {
            Pitch: -46.6179085
            Yaw: 24.0536232
            Roll: 1.61591197e-05
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.540678442
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 18298330456787678987
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.6640625
            Y: 0.16822052
            Z: -15.8594055
          }
          Rotation {
            Pitch: 50.9865417
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 577666287195927368
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -9.96875
            Y: -25.1790695
            Z: -16.9866104
          }
          Rotation {
            Yaw: -36.2859421
            Roll: 42.3208046
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.455360413
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2625505556034586183
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 1.6328125
            Y: 35.2716141
            Z: -15.8594055
          }
          Rotation {
            Pitch: 50.9864
            Yaw: 113.503311
            Roll: 2.44127259e-05
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8089473945251727236
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 33.8671875
            Y: 18.3846512
            Z: -20.3121262
          }
          Rotation {
            Pitch: -46.6175842
            Yaw: -143.05452
            Roll: 7.95521e-05
          }
          Scale {
            X: 0.125475615
            Y: 0.125475615
            Z: 0.462843031
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9114361807061927102
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            Y: 12.8159256
            Z: 15.4277115
          }
          Rotation {
            Pitch: 28.2680759
            Yaw: -117.464523
            Roll: 135.913376
          }
          Scale {
            X: 0.0812012851
            Y: 0.0812016577
            Z: 0.530470908
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14023749852981561065
        Name: "Point Light"
        Transform {
          Location {
            X: 5.23165894
            Y: 5.85351563
            Z: 1.72560883
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3996974960228464521
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 50
          Color {
            R: 0.929999948
            G: 0.258675456
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 7049.40381
            LocalLight {
              AttenuationRadius: 1045.47192
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 15583337666613535085
        Name: "Point Light"
        Transform {
          Location {
            X: 10.3708496
            Y: 1.35742188
            Z: 14.9165421
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3996974960228464521
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Light {
          Intensity: 50
          Color {
            R: 0.6
            G: 0.0596026555
            A: 1
          }
          CastShadows: true
          VolumetricIntensity: 5
          TeamSettings {
          }
          Light {
            UseTemperature: true
            Temperature: 6500
            LocalLight {
              AttenuationRadius: 237.893066
              PointLight {
                SourceRadius: 20
                SoftSourceRadius: 20
                FallOffExponent: 8
              }
            }
            MaxDrawDistance: 5000
            MaxDistanceFadeRange: 1000
          }
        }
      }
      Objects {
        Id: 5962581419675591469
        Name: "Fire and Flame Burning Loop Set 01 SFX"
        Transform {
          Location {
            Z: 9.49414063
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "bp:Type"
            Enum {
              Value: "mc:esfx_fireloops_01:11"
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
            Id: 4524004223631073795
          }
          AudioBP {
            Volume: 0.300577819
            Falloff: 3600
            Radius: 300
            EnableOcclusion: true
            IsSpatializationEnabled: true
            IsAttenuationEnabled: true
          }
        }
      }
      Objects {
        Id: 15102075283471792123
        Name: "Smoke Volume VFX"
        Transform {
          Location {
            X: 0.774307251
            Y: 1.30664063
            Z: 4.16904449
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3996974960228464521
        UnregisteredParameters {
          Overrides {
            Name: "bp:color"
            Color {
              R: 0.24000001
              G: 0.16211921
              A: 1
            }
          }
          Overrides {
            Name: "bp:Life"
            Float: 8.76277065
          }
          Overrides {
            Name: "bp:Gravity"
            Float: 6.93433571
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
            Id: 12121308474663325117
          }
          TeamSettings {
          }
          Vfx {
            AutoPlay: true
          }
        }
        Relevance {
          Value: "mc:eproxyrelevance:critical"
        }
      }
      Objects {
        Id: 3387283540095763122
        Name: "NewFolder"
        Transform {
          Location {
            X: 4.33837891
            Y: 14.1142578
            Z: -20.3121338
          }
          Rotation {
            Yaw: 33.4580956
          }
          Scale {
            X: 0.66043818
            Y: 0.66043818
            Z: 0.66043818
          }
        }
        ParentId: 3996974960228464521
        ChildIds: 11506965264176307105
        ChildIds: 3207938908865253943
        ChildIds: 15265588809586059640
        ChildIds: 14826199327814405153
        ChildIds: 8422100943342024200
        ChildIds: 6338224552315597891
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
          IsFilePartition: true
          FilePartitionName: "NewFolder_14"
        }
      }
      Objects {
        Id: 11506965264176307105
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -18.2519531
            Y: 20.3486328
          }
          Rotation {
            Pitch: -46.6178856
            Yaw: -38.3967667
            Roll: 2.486017e-05
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.540678442
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3207938908865253943
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 2.84130859
            Y: -20.0844727
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9863434
            Yaw: -62.4504242
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15265588809586059640
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -35.1875
            Y: -1.98876953
            Z: 3.32556152
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: -98.7362366
            Roll: 42.3213882
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.455360413
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14826199327814405153
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7744141
            Y: 15.684082
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9861565
            Yaw: 51.0527344
            Roll: 4.34001631e-05
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8422100943342024200
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7119141
            Y: -20.7055664
          }
          Rotation {
            Pitch: -46.6174583
            Yaw: 154.495148
            Roll: 9.94398943e-06
          }
          Scale {
            X: 0.125475615
            Y: 0.125475615
            Z: 0.462843031
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6338224552315597891
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 3.11035156
            Y: 6.74609375
            Z: 35.7398682
          }
          Rotation {
            Pitch: 28.2679787
            Yaw: -179.914871
            Roll: 135.913544
          }
          Scale {
            X: 0.0812012851
            Y: 0.0812016577
            Z: 0.530470908
          }
        }
        ParentId: 3387283540095763122
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 13543754196939094724
        Name: "NewFolder"
        Transform {
          Location {
            X: -5.7421875
            Y: -8.65332
            Z: -20.3121338
          }
          Rotation {
            Yaw: 168.513031
          }
          Scale {
            X: 0.66043818
            Y: 0.66043818
            Z: 0.66043818
          }
        }
        ParentId: 3996974960228464521
        ChildIds: 4094888394466727010
        ChildIds: 12540972012189635060
        ChildIds: 4984248812117259938
        ChildIds: 9216339074194502745
        ChildIds: 4158425730645611989
        ChildIds: 12916436857761674593
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
          IsFilePartition: true
          FilePartitionName: "NewFolder_13"
        }
      }
      Objects {
        Id: 4094888394466727010
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -18.2519531
            Y: 20.3486328
          }
          Rotation {
            Pitch: -46.6178856
            Yaw: -38.3967667
            Roll: 2.486017e-05
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.540678442
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12540972012189635060
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 2.84130859
            Y: -20.0844727
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9863434
            Yaw: -62.4504242
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4984248812117259938
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -35.1875
            Y: -1.98876953
            Z: 3.32556152
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: -98.7362366
            Roll: 42.3213882
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.455360413
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9216339074194502745
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7744141
            Y: 15.684082
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9861565
            Yaw: 51.0527344
            Roll: 4.34001631e-05
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 4158425730645611989
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7119141
            Y: -20.7055664
          }
          Rotation {
            Pitch: -46.6174583
            Yaw: 154.495148
            Roll: 9.94398943e-06
          }
          Scale {
            X: 0.125475615
            Y: 0.125475615
            Z: 0.462843031
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 12916436857761674593
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 3.11035156
            Y: 6.74609375
            Z: 35.7398682
          }
          Rotation {
            Pitch: 28.2679787
            Yaw: -179.914871
            Roll: 135.913544
          }
          Scale {
            X: 0.0812012851
            Y: 0.0812016577
            Z: 0.530470908
          }
        }
        ParentId: 13543754196939094724
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16074265980956077012
        Name: "NewFolder"
        Transform {
          Location {
            X: 8.12597656
            Y: -8.65332
            Z: -20.3121338
          }
          Rotation {
            Pitch: 7.04616451
            Yaw: 168.513031
          }
          Scale {
            X: 0.66043818
            Y: 0.66043818
            Z: 0.66043818
          }
        }
        ParentId: 3996974960228464521
        ChildIds: 16193001874915072376
        ChildIds: 17987223651040070355
        ChildIds: 15850294900078621130
        ChildIds: 17526986565776458353
        ChildIds: 10092164344162586042
        ChildIds: 14254197210158396078
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
          IsFilePartition: true
          FilePartitionName: "NewFolder_12"
        }
      }
      Objects {
        Id: 16193001874915072376
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -18.2519531
            Y: 20.3486328
          }
          Rotation {
            Pitch: -46.6178856
            Yaw: -38.3967667
            Roll: 2.486017e-05
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.540678442
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17987223651040070355
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 2.84130859
            Y: -20.0844727
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9863434
            Yaw: -62.4504242
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 15850294900078621130
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -35.1875
            Y: -1.98876953
            Z: 3.32556152
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: -98.7362366
            Roll: 42.3213882
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.455360413
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 17526986565776458353
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7744141
            Y: 15.684082
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9861565
            Yaw: 51.0527344
            Roll: 4.34001631e-05
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10092164344162586042
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7119141
            Y: -20.7055664
          }
          Rotation {
            Pitch: -46.6174583
            Yaw: 154.495148
            Roll: 9.94398943e-06
          }
          Scale {
            X: 0.125475615
            Y: 0.125475615
            Z: 0.462843031
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 14254197210158396078
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 3.11035156
            Y: 6.74609375
            Z: 35.7398682
          }
          Rotation {
            Pitch: 28.2679787
            Yaw: -179.914871
            Roll: 135.913544
          }
          Scale {
            X: 0.0812012851
            Y: 0.0812016577
            Z: 0.530470908
          }
        }
        ParentId: 16074265980956077012
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 177405609188271683
        Name: "NewFolder"
        Transform {
          Location {
            X: 18.206543
            Y: 14.1142578
            Z: -20.3121338
          }
          Rotation {
            Pitch: 7.04616451
            Yaw: 33.4581451
          }
          Scale {
            X: 0.66043818
            Y: 0.66043818
            Z: 0.66043818
          }
        }
        ParentId: 3996974960228464521
        ChildIds: 13300444883303496893
        ChildIds: 10150217845013287207
        ChildIds: 9121701852184319219
        ChildIds: 6745693650506131048
        ChildIds: 11059695655273496712
        ChildIds: 16454724932732031926
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
          IsFilePartition: true
          FilePartitionName: "NewFolder_11"
        }
      }
      Objects {
        Id: 13300444883303496893
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -18.2519531
            Y: 20.3486328
          }
          Rotation {
            Pitch: -46.6178856
            Yaw: -38.3967667
            Roll: 2.486017e-05
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.540678442
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 10150217845013287207
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 2.84130859
            Y: -20.0844727
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9863434
            Yaw: -62.4504242
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 9121701852184319219
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: -35.1875
            Y: -1.98876953
            Z: 3.32556152
          }
          Rotation {
            Pitch: 5.46415104e-05
            Yaw: -98.7362366
            Roll: 42.3213882
          }
          Scale {
            X: 0.146576613
            Y: 0.146576613
            Z: 0.455360413
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6745693650506131048
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7744141
            Y: 15.684082
            Z: 4.45275879
          }
          Rotation {
            Pitch: 50.9861565
            Yaw: 51.0527344
            Roll: 4.34001631e-05
          }
          Scale {
            X: 0.129613087
            Y: 0.129613087
            Z: 0.478104889
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 11059695655273496712
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 23.7119141
            Y: -20.7055664
          }
          Rotation {
            Pitch: -46.6174583
            Yaw: 154.495148
            Roll: 9.94398943e-06
          }
          Scale {
            X: 0.125475615
            Y: 0.125475615
            Z: 0.462843031
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 16454724932732031926
        Name: "Cylinder - Rounded Small"
        Transform {
          Location {
            X: 3.11035156
            Y: 6.74609375
            Z: 35.7398682
          }
          Rotation {
            Pitch: 28.2679787
            Yaw: -179.914871
            Roll: 135.913544
          }
          Scale {
            X: 0.0812012851
            Y: 0.0812016577
            Z: 0.530470908
          }
        }
        ParentId: 177405609188271683
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 16774985993685431100
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 1
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 1
          }
        }
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
            Id: 15385195988779076100
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          DisableCastShadows: true
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 6015517850887023665
        Name: "NewFolder"
        Transform {
          Location {
            X: -2.68066406
            Y: 10.7001953
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 18415970275679975660
        ChildIds: 1680219019625728287
        ChildIds: 2643650540455208974
        ChildIds: 3030373028366098534
        ChildIds: 12754867006342431834
        ChildIds: 2046178668879740602
        ChildIds: 1901480780478285015
        ChildIds: 5035552061645658744
        ChildIds: 16612032146799875596
        ChildIds: 18261039665611739160
        ChildIds: 1923873274586956920
        ChildIds: 785809804997608510
        ChildIds: 16038105615299722875
        ChildIds: 17798350537713969515
        ChildIds: 881147304443165582
        ChildIds: 2741160856065227335
        ChildIds: 80403428221137248
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
          IsFilePartition: true
          FilePartitionName: "NewFolder_10"
        }
      }
      Objects {
        Id: 1680219019625728287
        Name: "Chain Tile 01"
        Transform {
          Location {
            X: -1.1796875
            Y: -33.0908203
            Z: 25.4968262
          }
          Rotation {
          }
          Scale {
            X: 0.972438097
            Y: 0.371456116
            Z: 0.3
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 14622766148304921007
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
        Id: 2643650540455208974
        Name: "Cone - Truncated Hollow Wide"
        Transform {
          Location {
            X: -0.048828125
            Y: -0.223632813
            Z: 29.9777832
          }
          Rotation {
          }
          Scale {
            X: 0.6
            Y: 0.6
            Z: -0.567716122
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 16545466188827637431
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
        Id: 3030373028366098534
        Name: "Chain Ceiling Anchor"
        Transform {
          Location {
            X: 11.1171875
            Y: 0.756835938
            Z: 41.5681152
          }
          Rotation {
            Pitch: 13.4753685
            Yaw: -179.999954
            Roll: -179.999954
          }
          Scale {
            X: 1
            Y: 1
            Z: 0.547988355
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 1720618074296637261
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
        Id: 12754867006342431834
        Name: "Cone - Truncated Wide"
        Transform {
          Location {
            X: 0.762695313
            Y: -0.4921875
          }
          Rotation {
          }
          Scale {
            X: 0.5
            Y: 0.5
            Z: 0.090197444
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 16341671563531779679
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
        Id: 2046178668879740602
        Name: "Ring"
        Transform {
          Location {
            X: -1.38085938
            Y: 30.828125
            Z: 18.5568848
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 1901480780478285015
        Name: "Ring"
        Transform {
          Location {
            X: -1.38085938
            Y: -31.4970703
            Z: 18.5568848
          }
          Rotation {
            Pitch: -90
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 5035552061645658744
        Name: "Ring"
        Transform {
          Location {
            X: -1.41601563
            Y: -33.2802734
            Z: 25.5773926
          }
          Rotation {
            Pitch: -90
            Yaw: -14.0362635
            Roll: 104.03627
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 16612032146799875596
        Name: "Ring"
        Transform {
          Location {
            X: -1.41601563
            Y: 33.0986328
            Z: 25.5773926
          }
          Rotation {
            Pitch: -90
            Yaw: -90
            Roll: 180
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 18261039665611739160
        Name: "Chain Tile 01"
        Transform {
          Location {
            X: -1.1796875
            Y: 33.2880859
            Z: 25.4968262
          }
          Rotation {
          }
          Scale {
            X: 0.972438097
            Y: 0.371456116
            Z: 0.3
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 14622766148304921007
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
        Id: 1923873274586956920
        Name: "Ring - Quarter Thin"
        Transform {
          Location {
            X: -1.04394531
            Y: 0.791992188
            Z: 170.491455
          }
          Rotation {
            Pitch: -44.999958
            Yaw: 89.9999695
            Roll: -89.9999542
          }
          Scale {
            X: 1.4
            Y: 1.4
            Z: 1.4
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14495393770812234815
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 5108695405520209775
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
        Id: 785809804997608510
        Name: "Ring"
        Transform {
          Location {
            X: -1.41601563
            Y: -33.2802734
            Z: 114.112305
          }
          Rotation {
            Pitch: -53.042572
            Yaw: -89.9999466
            Roll: -179.999634
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 16038105615299722875
        Name: "Ring"
        Transform {
          Location {
            X: -1.41601563
            Y: 33.0986328
            Z: 113.495605
          }
          Rotation {
            Pitch: -60.8134193
            Yaw: 89.9998169
            Roll: 0.00169124757
          }
          Scale {
            X: 0.1
            Y: 0.1
            Z: 0.711883843
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7912916923718011271
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 46061843978868412
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
        Id: 17798350537713969515
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: -100.876953
            Y: 158.086914
            Z: -149.003174
          }
          Rotation {
            Pitch: -30.4920673
            Yaw: -49.6790848
            Roll: 3.9632082e-06
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.586218715
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Accent:id"
            AssetReference {
              Id: 47027679170908386
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12728337217389179065
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
        Id: 881147304443165582
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: 82.8662109
            Y: 158.086914
            Z: -149.003174
          }
          Rotation {
            Pitch: -30.4920673
            Yaw: -126.292076
            Roll: 2.27884466e-05
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.545480072
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Accent:id"
            AssetReference {
              Id: 47027679170908386
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12728337217389179065
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
        Id: 2741160856065227335
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: -100.876953
            Y: -126.265625
            Z: -161.673828
          }
          Rotation {
            Pitch: 4.25112295
            Yaw: -56.0048904
            Roll: 26.1603661
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.534588635
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Accent:id"
            AssetReference {
              Id: 47027679170908386
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12728337217389179065
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
        Id: 80403428221137248
        Name: "Craftsman Wall 02 Corner"
        Transform {
          Location {
            X: 82.8662109
            Y: -126.265625
            Z: -161.673828
          }
          Rotation {
            Pitch: 5.71863031
            Yaw: -120.836983
            Roll: -23.8411369
          }
          Scale {
            X: 0.2
            Y: 0.2
            Z: 0.570009172
          }
        }
        ParentId: 6015517850887023665
        UnregisteredParameters {
          Overrides {
            Name: "ma:Building_Accent:id"
            AssetReference {
              Id: 47027679170908386
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
          Value: "mc:ecollisionsetting:forceon"
        }
        CoreMesh {
          MeshAsset {
            Id: 12728337217389179065
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
      Id: 7542207994756963230
      Name: "Bone Human Ribcage 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_bones_human_ribcage_01_ref"
      }
    }
    Assets {
      Id: 4722912119346492871
      Name: "Emissive Glow Transparent"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_basic_emissive_001"
      }
    }
    Assets {
      Id: 12333073097347897071
      Name: "Torch Fire VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_torch_fire"
      }
    }
    Assets {
      Id: 15385195988779076100
      Name: "Cylinder - Rounded Small"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_rounded_003"
      }
    }
    Assets {
      Id: 4524004223631073795
      Name: "Fire and Flame Burning Loop Set 01 SFX"
      PlatformAssetType: 10
      PrimaryAsset {
        AssetType: "AudioBlueprintAssetRef"
        AssetId: "sfxabp_nature_fireloops_ref"
      }
    }
    Assets {
      Id: 12121308474663325117
      Name: "Smoke Volume VFX"
      PlatformAssetType: 8
      PrimaryAsset {
        AssetType: "VfxBlueprintAssetRef"
        AssetId: "fxbp_smoke_volume_vfx"
      }
    }
    Assets {
      Id: 14622766148304921007
      Name: "Chain Tile 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chain_001"
      }
    }
    Assets {
      Id: 16545466188827637431
      Name: "Cone - Truncated Hollow Wide Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_hollow_006"
      }
    }
    Assets {
      Id: 1720618074296637261
      Name: "Chain Ceiling Anchor"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_chain_top_001"
      }
    }
    Assets {
      Id: 16341671563531779679
      Name: "Cone - Truncated Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_003"
      }
    }
    Assets {
      Id: 46061843978868412
      Name: "Ring"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_torus_004"
      }
    }
    Assets {
      Id: 5108695405520209775
      Name: "Ring - Quarter Thin"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_001"
      }
    }
    Assets {
      Id: 14495393770812234815
      Name: "Bark Pine 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bark_pine_001_uv"
      }
    }
    Assets {
      Id: 12728337217389179065
      Name: "Craftsman Wall 02 Corner"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_urb_sub_craftsman_wall_002_corner"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "Cozy Campfire with a cooking pot on a wooden framework"
  }
  SerializationVersion: 78
  DirectlyPublished: true
}
