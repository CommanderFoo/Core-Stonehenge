Assets {
  Id: 2859211038211452619
  Name: "Prop Fish Knifejaw"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 15450214907374807842
      Objects {
        Id: 15450214907374807842
        Name: "Prop Fish Knifejaw"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 1088265982249555558
        ChildIds: 13900522913963038768
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
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        NetworkContext {
        }
      }
      Objects {
        Id: 13900522913963038768
        Name: "fish_scale_adjustment"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.501507938
            Y: 0.501507938
            Z: 0.501507938
          }
        }
        ParentId: 15450214907374807842
        ChildIds: 17782949783155058253
        ChildIds: 11753125737800486765
        UnregisteredParameters {
          Overrides {
            Name: "cs:SwimCycleSpeedAdjustment"
            Float: 1
          }
          Overrides {
            Name: "cs:main_orientation"
            ObjectReference {
              SubObjectId: 11753125737800486765
            }
          }
          Overrides {
            Name: "cs:main_pivot"
            ObjectReference {
              SubObjectId: 17403141124426977746
            }
          }
          Overrides {
            Name: "cs:head_pivot"
            ObjectReference {
              SubObjectId: 3089460524283196481
            }
          }
          Overrides {
            Name: "cs:body01_pivot"
            ObjectReference {
              SubObjectId: 15302072100315957836
            }
          }
          Overrides {
            Name: "cs:body02_pivot"
            ObjectReference {
              SubObjectId: 14627671814454529572
            }
          }
          Overrides {
            Name: "cs:tail_pivot"
            ObjectReference {
              SubObjectId: 4088070289092709690
            }
          }
          Overrides {
            Name: "cs:tailTip_pivot"
            ObjectReference {
              SubObjectId: 17571389553490379526
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
        NetworkContext {
        }
      }
      Objects {
        Id: 17782949783155058253
        Name: "FishAnimationClient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13900522913963038768
        UnregisteredParameters {
          Overrides {
            Name: "cs:root"
            ObjectReference {
              SubObjectId: 13900522913963038768
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
            Id: 18265070740135509446
          }
        }
      }
      Objects {
        Id: 11753125737800486765
        Name: "main_orient"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13900522913963038768
        ChildIds: 17403141124426977746
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
        Id: 17403141124426977746
        Name: "main_translate"
        Transform {
          Location {
            X: 75
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11753125737800486765
        ChildIds: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: false
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 10
          }
          Overrides {
            Name: "cs:curveOffset"
            String: ".25"
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
        Id: 3089460524283196481
        Name: "head_pivot"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 17403141124426977746
        ChildIds: 17976333424600565112
        ChildIds: 5372948262748598863
        ChildIds: 10943769187620099635
        ChildIds: 11712288284612484419
        ChildIds: 11841614219547473571
        ChildIds: 15749635043481713058
        ChildIds: 10265926247082282088
        ChildIds: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: true
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 8
          }
          Overrides {
            Name: "cs:curveOffset"
            String: "-0.1"
          }
          Overrides {
            Name: "cs:yawTurnOffsetValue"
            Float: 60
          }
          Overrides {
            Name: "cs:pitchTurnOffsetValue"
            Float: -35
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
        Id: 17976333424600565112
        Name: "Eyes"
        Transform {
          Location {
            X: -28.5528183
            Z: 2.30933022
          }
          Rotation {
            Pitch: -3.6449585
            Yaw: 1.47574474e-05
            Roll: 89.9999084
          }
          Scale {
            X: 0.137466699
            Y: 0.137466848
            Z: 0.12375576
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 4156750546228578510
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
            Id: 916665379155427451
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
        Id: 5372948262748598863
        Name: "2D Basic Shapes Decal"
        Transform {
          Location {
            X: -26.5618496
            Y: -10.5676088
            Z: 3.13164115
          }
          Rotation {
            Pitch: 1.20375931
            Yaw: -161.542633
            Roll: 82.1729202
          }
          Scale {
            X: 0.0535432249
            Y: 0.0535432249
            Z: 0.0535432249
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 1
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.113584056
              G: 0.119791664
              B: 0.0723741278
              A: 1
            }
          }
          Overrides {
            Name: "bp:Stroke Width"
            Float: 0.552517891
          }
          Overrides {
            Name: "bp:color"
            Color {
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
            Id: 2159678873184162260
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
        Id: 10943769187620099635
        Name: "2D Basic Shapes Decal"
        Transform {
          Location {
            X: -26.5618496
            Y: 10.8893814
            Z: 3.13165402
          }
          Rotation {
            Pitch: -5.76464844
            Yaw: -15.6233521
            Roll: 81.9993362
          }
          Scale {
            X: 0.0535432249
            Y: 0.0535432249
            Z: 0.0535432249
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "bp:Corner Rounding"
            Float: 1
          }
          Overrides {
            Name: "bp:Stroke Color"
            Color {
              R: 0.113584056
              G: 0.119791664
              B: 0.0723741278
              A: 1
            }
          }
          Overrides {
            Name: "bp:Stroke Width"
            Float: 0.398520619
          }
          Overrides {
            Name: "bp:color"
            Color {
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
            Id: 2159678873184162260
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
        Id: 11712288284612484419
        Name: "Jaw Upper"
        Transform {
          Location {
            X: -14.814271
            Z: -4.40130234
          }
          Rotation {
            Pitch: 84.8598404
            Yaw: -179.999908
            Roll: 0.000125350402
          }
          Scale {
            X: 0.324367344
            Y: 0.101693518
            Z: 0.171407133
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.197009504
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.7
              G: 0.994039655
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6633911215066249406
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
        Id: 11841614219547473571
        Name: "Jaw Lower"
        Transform {
          Location {
            X: -15.1356335
            Z: -9.44836903
          }
          Rotation {
            Pitch: 78.9807129
            Yaw: 3.76892021e-05
            Roll: -179.999756
          }
          Scale {
            X: 0.324367344
            Y: 0.101693518
            Z: 0.171407133
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.197009504
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.7
              G: 0.994039655
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 6633911215066249406
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
        Id: 15749635043481713058
        Name: "Head"
        Transform {
          Location {
            X: -37.8862801
            Z: -4.42978811
          }
          Rotation {
            Pitch: 83.9413834
            Yaw: 1.54289359e-11
            Roll: 179.999954
          }
          Scale {
            X: 0.762520075
            Y: 0.239060327
            Z: 0.636257768
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.137885839
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.167095095
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 585112705082600373
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
        Id: 10265926247082282088
        Name: "Joint Sphere"
        Transform {
          Location {
            X: -37.9749336
            Z: -4.95945358
          }
          Rotation {
            Pitch: 83.4983139
          }
          Scale {
            X: 0.73637867
            Y: 0.225348622
            Z: 0.229799271
          }
        }
        ParentId: 3089460524283196481
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.232279375
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.360362738
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
            Id: 1064960179719297784
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
        Id: 15302072100315957836
        Name: "body01_pivot"
        Transform {
          Location {
            X: -29.2887096
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3089460524283196481
        ChildIds: 2244397226133954480
        ChildIds: 17420233406477861695
        ChildIds: 7365656962894095089
        ChildIds: 8544979699513119956
        ChildIds: 4689342552243021952
        ChildIds: 6184267358262380048
        ChildIds: 7982151444921901518
        ChildIds: 2822871386760987084
        ChildIds: 10799060977474886299
        ChildIds: 3111958965001541842
        ChildIds: 2724858138611811171
        ChildIds: 10151259678773993281
        ChildIds: 3745804673858300004
        ChildIds: 2287219433646765913
        ChildIds: 7933780344371412115
        ChildIds: 14627671814454529572
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: true
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 6
          }
          Overrides {
            Name: "cs:curveOffset"
            String: ".50"
          }
          Overrides {
            Name: "cs:yawTurnOffsetValue"
            Float: -40
          }
          Overrides {
            Name: "cs:pitchTurnOffsetValue"
            Float: 20
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
        Id: 2244397226133954480
        Name: "Fin Spine"
        Transform {
          Location {
            X: -30.703125
            Y: -0.59375
            Z: 46.0823364
          }
          Rotation {
            Pitch: 0.000198075475
            Yaw: 89.999527
            Roll: 38.3486748
          }
          Scale {
            X: 0.0341462865
            Y: 0.0341443568
            Z: 0.140825242
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 17420233406477861695
        Name: "Fin Spine"
        Transform {
          Location {
            X: -38.4375
            Y: -0.59375
            Z: 45.8477173
          }
          Rotation {
            Pitch: 0.000136603776
            Yaw: 89.9995728
            Roll: 38.5684624
          }
          Scale {
            X: 0.0341462754
            Y: 0.0341459699
            Z: 0.145606712
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 7365656962894095089
        Name: "Fin Spine "
        Transform {
          Location {
            X: -44.5751953
            Y: -0.59375
            Z: 45.0044556
          }
          Rotation {
            Pitch: 9.56226431e-05
            Yaw: 89.9995422
            Roll: 39.67313
          }
          Scale {
            X: 0.038136147
            Y: 0.0381365195
            Z: 0.164098069
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 8544979699513119956
        Name: "Fin Spine"
        Transform {
          Location {
            X: -52.359375
            Y: -0.59375
            Z: 42.6572571
          }
          Rotation {
            Pitch: 3.4150944e-05
            Yaw: 89.9996338
            Roll: 38.3307
          }
          Scale {
            X: 0.0466732644
            Y: 0.0466732644
            Z: 0.174732372
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 4689342552243021952
        Name: "Fin Spine"
        Transform {
          Location {
            X: -61.6713867
            Y: -0.59375
            Z: 42.6431274
          }
          Rotation {
            Pitch: 8.19622655e-05
            Yaw: 89.9993744
            Roll: 39.6661377
          }
          Scale {
            X: 0.0481985509
            Y: 0.0481982827
            Z: 0.157027945
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 6184267358262380048
        Name: "Fin Spine"
        Transform {
          Location {
            X: -68.1474609
            Y: -0.59375
            Z: 39.9663086
          }
          Rotation {
            Pitch: 8.87924543e-05
            Yaw: 89.9991074
            Roll: 43.642
          }
          Scale {
            X: 0.0426441133
            Y: 0.0426439419
            Z: 0.149797857
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 7982151444921901518
        Name: "Fin Spine"
        Transform {
          Location {
            X: -74.9956055
            Y: -0.59375
            Z: 38.0191956
          }
          Rotation {
            Pitch: 8.19622655e-05
            Yaw: 89.9991608
            Roll: 47.3130074
          }
          Scale {
            X: 0.0399270691
            Y: 0.0399252884
            Z: 0.137887716
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 2822871386760987084
        Name: "Fin Spine"
        Transform {
          Location {
            X: -83.8769531
            Y: -0.59375
            Z: 37.0938721
          }
          Rotation {
            Pitch: 0.000177584909
            Yaw: 89.9992
            Roll: 55.9815216
          }
          Scale {
            X: 0.0355844758
            Y: 0.0355821699
            Z: 0.09118817
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 11559324891790146189
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 1
              G: 1
              B: 1
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
          Value: "mc:ecollisionsetting:forceoff"
        }
        CoreMesh {
          MeshAsset {
            Id: 12338314996582270453
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
        Id: 10799060977474886299
        Name: "Dorsal Fin 01"
        Transform {
          Location {
            X: -64.450592
            Y: -0.458854556
            Z: 37.5261841
          }
          Rotation {
            Pitch: 2.04905664e-05
            Yaw: -90.0014343
            Roll: -12.2709351
          }
          Scale {
            X: 0.14035812
            Y: 1.11358619
            Z: 0.314765483
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 6141047184112985311
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.6591627
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.125
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
            Id: 7296848305151947
          }
          Teams {
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 3111958965001541842
        Name: "Body"
        Transform {
          Location {
            X: -42.5849609
            Z: 0.0527954102
          }
          Rotation {
            Pitch: 90
            Yaw: 14.0362635
            Roll: 104.03627
          }
          Scale {
            X: 0.982837915
            Y: 1.048
            Z: 0.992901206
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.590622842
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
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
            Id: 3381973076649511207
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
        Id: 2724858138611811171
        Name: "Body"
        Transform {
          Location {
            X: -61.0004883
            Z: 0.0527954102
          }
          Rotation {
            Pitch: 90
            Roll: 90.0000076
          }
          Scale {
            X: 0.947
            Y: 1.048
            Z: 0.88875103
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.641315937
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.137885839
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
            Id: 3381973076649511207
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
        Id: 10151259678773993281
        Name: "Pectoral Fin"
        Transform {
          Location {
            X: -40.9165039
            Y: -17.0351563
            Z: -19.2129059
          }
          Rotation {
            Pitch: -17.082428
            Yaw: 29.9951591
            Roll: -111.994324
          }
          Scale {
            X: 0.500897
            Y: 0.204410747
            Z: 0.0894760638
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 5489775416547967874
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
        Id: 3745804673858300004
        Name: "Pectoral Fin"
        Transform {
          Location {
            X: -40.9165039
            Y: 17.4423828
            Z: -19.2129059
          }
          Rotation {
            Pitch: -19.0744019
            Yaw: -30.1525879
            Roll: 110.357101
          }
          Scale {
            X: 0.500897
            Y: 0.204410747
            Z: 0.0894760638
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 5489775416547967874
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
        Id: 2287219433646765913
        Name: "Pelvic Fin"
        Transform {
          Location {
            X: -49.7875977
            Y: 5.35644531
            Z: -46.3874512
          }
          Rotation {
            Pitch: 46.6273651
            Yaw: -18.0189819
            Roll: 83.4827423
          }
          Scale {
            X: 0.390457302
            Y: 0.190304503
            Z: 0.0758097321
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 5489775416547967874
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
        Id: 7933780344371412115
        Name: "Pelvic Fin"
        Transform {
          Location {
            X: -49.7875977
            Y: -5.88964844
            Z: -46.3874512
          }
          Rotation {
            Pitch: 49.2379112
            Yaw: 19.9577408
            Roll: -86.2511902
          }
          Scale {
            X: 0.390457302
            Y: 0.190304503
            Z: 0.0758097321
          }
        }
        ParentId: 15302072100315957836
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 5489775416547967874
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
        Id: 14627671814454529572
        Name: "body02_pivot"
        Transform {
          Location {
            X: -96.6904297
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15302072100315957836
        ChildIds: 6825251770990237903
        ChildIds: 2221449063242543828
        ChildIds: 8544812768989964129
        ChildIds: 4088070289092709690
        ChildIds: 8749871330360093957
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: true
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 8
          }
          Overrides {
            Name: "cs:curveOffset"
            String: ".9"
          }
          Overrides {
            Name: "cs:yawTurnOffsetValue"
            Float: -60
          }
          Overrides {
            Name: "cs:pitchTurnOffsetValue"
            Float: 25
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
        Id: 6825251770990237903
        Name: "Body 02"
        Transform {
          Location {
            X: -0.737943172
            Z: -0.399920166
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.665635943
            Y: 0.192964047
            Z: 0.459617972
          }
        }
        ParentId: 14627671814454529572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.474182665
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
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
            Id: 2427234873479672713
          }
          Teams {
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 2221449063242543828
        Name: "Dorsal Fin 02"
        Transform {
          Location {
            X: -12.9936523
            Y: -0.458984375
            Z: 19.8031616
          }
          Rotation {
            Pitch: 0.00011611321
            Yaw: -90.0012512
            Roll: -37.6985283
          }
          Scale {
            X: 0.140360758
            Y: 0.563968301
            Z: 0.419385225
          }
        }
        ParentId: 14627671814454529572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.0311234
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.487378389
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
            Id: 7296848305151947
          }
          Teams {
          }
          InteractWithTriggers: true
          StaticMesh {
            Physics {
            }
          }
        }
      }
      Objects {
        Id: 8544812768989964129
        Name: "Joint Sphere"
        Transform {
          Location {
            X: -23.8891602
            Z: -0.551315308
          }
          Rotation {
            Pitch: 90
          }
          Scale {
            X: 0.325
            Y: 0.084
            Z: 0.084
          }
        }
        ParentId: 14627671814454529572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.137885839
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
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
            Id: 1064960179719297784
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
        Id: 4088070289092709690
        Name: "tail_pivot"
        Transform {
          Location {
            X: -23.8891659
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14627671814454529572
        ChildIds: 6412077697217207011
        ChildIds: 17571389553490379526
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: true
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 15
          }
          Overrides {
            Name: "cs:curveOffset"
            String: "1.2"
          }
          Overrides {
            Name: "cs:yawTurnOffsetValue"
            Float: -60
          }
          Overrides {
            Name: "cs:pitchTurnOffsetValue"
            Float: 15
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
        Id: 6412077697217207011
        Name: "Tail"
        Transform {
          Location {
            X: -19.3609524
            Z: -1.01295316
          }
          Rotation {
            Yaw: -90
            Roll: 89.9999924
          }
          Scale {
            X: 0.125
            Y: 0.406
            Z: 0.39232254
          }
        }
        ParentId: 4088070289092709690
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 10128210033549357816
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 0.125
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.273863465
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
            Id: 13168784332205840745
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
        Id: 17571389553490379526
        Name: "tailTip_pivot"
        Transform {
          Location {
            X: -35.8991394
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4088070289092709690
        ChildIds: 10141052626308348450
        ChildIds: 3514778546889552261
        UnregisteredParameters {
          Overrides {
            Name: "cs:useRotation"
            Bool: true
          }
          Overrides {
            Name: "cs:curveMax"
            Float: 25
          }
          Overrides {
            Name: "cs:curveOffset"
            String: "1.66"
          }
          Overrides {
            Name: "cs:yawTurnOffsetValue"
            Float: -60
          }
          Overrides {
            Name: "cs:pitchTurnOffsetValue"
            Float: 15
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
        Id: 10141052626308348450
        Name: "Tail Fin"
        Transform {
          Location {
            X: 18.1430664
            Y: -0.576171875
            Z: -0.549591064
          }
          Rotation {
            Pitch: 2.73207552e-05
            Yaw: -89.999939
            Roll: -48.5959473
          }
          Scale {
            X: 0.384951
            Y: 0.404800802
            Z: 0.504541
          }
        }
        ParentId: 17571389553490379526
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 7296848305151947
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
        Id: 3514778546889552261
        Name: "Tail Fin"
        Transform {
          Location {
            X: 18.1430664
            Y: -0.576171875
            Z: -0.549591064
          }
          Rotation {
            Pitch: 0.000129773587
            Yaw: -89.9998169
            Roll: -135.308334
          }
          Scale {
            X: 0.384951
            Y: 0.404800802
            Z: 0.504541
          }
        }
        ParentId: 17571389553490379526
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
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
            Id: 7296848305151947
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
        Id: 8749871330360093957
        Name: "Dorsal Fin 02"
        Transform {
          Location {
            X: -8.63867188
            Y: -0.458984375
            Z: -20.1408081
          }
          Rotation {
            Pitch: -9.15527344e-05
            Yaw: 90.0012741
            Roll: 142.301544
          }
          Scale {
            X: 0.140360758
            Y: 0.563968301
            Z: 0.419385225
          }
        }
        ParentId: 14627671814454529572
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 7319844119790749505
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:utile"
            Float: 2.0311234
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:vtile"
            Float: 0.487378389
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
            Id: 7296848305151947
          }
          Teams {
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
      Id: 916665379155427451
      Name: "Capsule"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_capsule_001"
      }
    }
    Assets {
      Id: 2159678873184162260
      Name: "2D Basic Shapes Decal"
      PlatformAssetType: 14
      PrimaryAsset {
        AssetType: "DecalBlueprintAssetRef"
        AssetId: "dcl_basicShapes"
      }
    }
    Assets {
      Id: 6633911215066249406
      Name: "Cone"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_001"
      }
    }
    Assets {
      Id: 585112705082600373
      Name: "Cone - Truncated Narrow"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_002"
      }
    }
    Assets {
      Id: 1064960179719297784
      Name: "Sphere"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_sphere_002"
      }
    }
    Assets {
      Id: 12338314996582270453
      Name: "Horn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_horn_001"
      }
    }
    Assets {
      Id: 11559324891790146189
      Name: "Bone Raw"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_bone_raw_001_uv_ref"
      }
    }
    Assets {
      Id: 7296848305151947
      Name: "Thorn"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_tooth_002"
      }
    }
    Assets {
      Id: 3381973076649511207
      Name: "Lens"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_lense_001"
      }
    }
    Assets {
      Id: 5489775416547967874
      Name: "Sphere - Half"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_hemisphere_001"
      }
    }
    Assets {
      Id: 2427234873479672713
      Name: "Cone - Truncated Concave"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_concave_001"
      }
    }
    Assets {
      Id: 13168784332205840745
      Name: "Cone - Truncated Wide"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cone_truncated_003"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  Marketplace {
    Description: "The are the fish used in Farmers Market. "
  }
  SerializationVersion: 81
  DirectlyPublished: true
}
