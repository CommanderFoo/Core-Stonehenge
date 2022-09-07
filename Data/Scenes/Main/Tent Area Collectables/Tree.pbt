Name: "Tent Area Collectables"
RootId: 8286381177779862723
Objects {
  Id: 4986857375604526176
  Name: "Pickup Collectable - Potion"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 8201329935377437025
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Potion"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8659.3457
            Y: -2075.53101
            Z: 580.512695
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 2.31754446
            Yaw: 78.9839096
            Roll: -0.451049775
          }
        }
        Overrides {
          Name: "cs:type"
          String: "collectable_pickup"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 35
        }
      }
    }
    ParameterOverrideMap {
      key: 9520775038996232748
      value {
        Overrides {
          Name: "Visible"
          Enum {
            Value: "mc:evisibilitysetting:inheritfromparent"
          }
        }
      }
    }
    TemplateAsset {
      Id: 607199379774015429
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 458383807507153428
  Name: "Pickup Collectable - Fork"
  Transform {
    Location {
      X: 8118.99658
      Y: -1105.23779
      Z: 560.045776
    }
    Rotation {
      Pitch: 79.8493576
      Yaw: -169.799866
      Roll: -54.7299576
    }
    Scale {
      X: 0.0681157708
      Y: 0.0681157708
      Z: 0.0681157708
    }
  }
  ParentId: 8286381177779862723
  ChildIds: 17988067001090722281
  ChildIds: 17992311715743725456
  ChildIds: 7783656622223791248
  ChildIds: 13657937177700166183
  ChildIds: 10563359891679795264
  ChildIds: 12271038334539452166
  ChildIds: 6000458076850311128
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
  InstanceHistory {
    SelfId: 458383807507153428
    SubobjectId: 14138570094570943887
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
    WasRoot: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6000458076850311128
  Name: "Sphere - Half Quarter"
  Transform {
    Location {
      X: 26.0356369
      Y: 2.02865791
      Z: -8.34491634
    }
    Rotation {
      Pitch: -2.88265395
      Yaw: -45.8201485
      Roll: -36.9399681
    }
    Scale {
      X: 0.677027583
      Y: 0.986534
      Z: 1.0418359
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 6000458076850311128
    SubobjectId: 10461619937801975875
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12271038334539452166
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: 35.3688965
      Y: -6.43722534
      Z: 27.4128666
    }
    Rotation {
      Pitch: -86.4400253
      Yaw: -172.609436
      Roll: 95.8149872
    }
    Scale {
      X: 0.749125183
      Y: 0.783250213
      Z: 1.59641838
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 12271038334539452166
    SubobjectId: 7503480121092815005
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10563359891679795264
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: 22.1073532
      Y: -4.02864218
      Z: 10.1863
    }
    Rotation {
      Pitch: -86.4400253
      Yaw: -172.609436
      Roll: 95.8149872
    }
    Scale {
      X: 0.749123096
      Y: 0.699123502
      Z: 1.59641838
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 10563359891679795264
    SubobjectId: 5832826624230502363
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13657937177700166183
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: 21.5338802
      Y: -4.01430559
      Z: -7.95244646
    }
    Rotation {
      Pitch: -86.4400253
      Yaw: -172.609436
      Roll: 95.8149872
    }
    Scale {
      X: 0.749123096
      Y: 0.699123502
      Z: 1.59641838
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 13657937177700166183
    SubobjectId: 9214495351304003004
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7783656622223791248
  Name: "Sphere - Half Slice Thin"
  Transform {
    Location {
      X: 29.9639225
      Y: -6.67378283
      Z: -25.3922729
    }
    Rotation {
      Pitch: -86.4400253
      Yaw: -172.609436
      Roll: 95.8149872
    }
    Scale {
      X: 0.749125183
      Y: 0.783250213
      Z: 1.59641838
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 7783656622223791248
    SubobjectId: 12569495187129754379
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17992311715743725456
  Name: "Baseball Bat"
  Transform {
    Location {
      X: -0.47311455
      Y: 19.0822868
      Z: -6.25084686
    }
    Rotation {
      Pitch: 85.5969
      Yaw: 3.33599281
      Roll: 86.618866
    }
    Scale {
      X: 2.70810962
      Y: 1.35405481
      Z: 1.69256842
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17992311715743725456
    SubobjectId: 4313114864779067403
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17988067001090722281
  Name: "Collider"
  Transform {
    Location {
      X: -0.47311455
      Y: 58.5515099
      Z: -6.42736864
    }
    Rotation {
      Pitch: 85.5969925
      Yaw: 3.33577847
      Roll: 86.618866
    }
    Scale {
      X: 0.771363258
      Y: 0.488370866
      Z: 2.83000398
    }
  }
  ParentId: 458383807507153428
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
      BoundsScale: 1
    }
  }
  InstanceHistory {
    SelfId: 17988067001090722281
    SubobjectId: 4307895982737964658
    InstanceId: 9772239014817614643
    TemplateId: 4887566337860449469
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11857213164912395402
  Name: "Pickup Sub Collectable - Tavern Mug"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 13203892409337823919
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Sub Collectable - Tavern Mug"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8255.4668
            Y: -1341.55225
            Z: 624.471802
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 90
            Yaw: 165.96373
            Roll: 30.9637146
          }
        }
      }
    }
    TemplateAsset {
      Id: 2115607611792057022
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9525952087351916394
  Name: "Pickup Collectable - Bean"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 19245884212073571
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Bean"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8279.18555
            Y: -1147.97363
            Z: 609.180542
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 10.7511883
            Yaw: -110.147041
            Roll: 69.2387161
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 36
        }
      }
    }
    TemplateAsset {
      Id: 8757198150731735908
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6048255682585037352
  Name: "Pickup Collectable - Bean"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 19245884212073571
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Bean"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 7977.73096
            Y: -1173.87646
            Z: 561.000183
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 9.51711655
            Yaw: 2.21864486
            Roll: 84.6987534
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 35
        }
      }
    }
    TemplateAsset {
      Id: 8757198150731735908
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6959966626304789356
  Name: "Pickup Collectable - Bean"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 19245884212073571
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Bean"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8206.51367
            Y: -1054.26123
            Z: 694.557373
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 12.2315836
            Yaw: -4.36802537e-07
            Roll: 81.312767
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 34
        }
      }
    }
    TemplateAsset {
      Id: 8757198150731735908
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11048703261381075031
  Name: "Pickup Collectable - Bean"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 19245884212073571
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Bean"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8257.70508
            Y: -1463.40576
            Z: 626.12616
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 10.5952959
            Yaw: -41.5099068
            Roll: 84.2812271
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 33
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
      }
    }
    TemplateAsset {
      Id: 8757198150731735908
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15105807000663525418
  Name: "Pickup Collectable - Bean"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 19245884212073571
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Bean"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8445.09
            Y: -2124.09839
            Z: 570.299255
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 18.129076
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.0681157708
            Y: 0.0681157708
            Z: 0.0681157708
          }
        }
      }
    }
    TemplateAsset {
      Id: 8757198150731735908
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15447213667361306640
  Name: "Pickup Collectable - Skull"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15809821440587810234
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Skull"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8375.7832
            Y: -2399.08716
            Z: 585.35437
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 51.5699883
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 35
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        Overrides {
          Name: "cs:collectable_parent_id"
          Int: 31
        }
      }
    }
    TemplateAsset {
      Id: 18443030339376869299
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1652730963455717669
  Name: "Pickup Collectable - Skull"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15809821440587810234
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Skull"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8200.25586
            Y: -1043.1582
            Z: 649.602478
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -176.465
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 34
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        Overrides {
          Name: "cs:collectable_parent_id"
          Int: 31
        }
      }
    }
    TemplateAsset {
      Id: 18443030339376869299
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 885438878428435502
  Name: "Pickup Collectable - Skull"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15809821440587810234
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Skull"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8270.48438
            Y: -1084.73047
            Z: 649.602478
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 123.172073
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 33
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        Overrides {
          Name: "cs:collectable_parent_id"
          Int: 31
        }
      }
    }
    TemplateAsset {
      Id: 18443030339376869299
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11310072126674568153
  Name: "Pickup Collectable - Skull"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15809821440587810234
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Skull"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8304.65
            Y: -1542.97266
            Z: 625.102295
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 75.6499
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 32
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        Overrides {
          Name: "cs:collectable_parent_id"
          Int: 31
        }
      }
    }
    TemplateAsset {
      Id: 18443030339376869299
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7736533683880749263
  Name: "Pickup Collectable - Skull"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8286381177779862723
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 15809821440587810234
      value {
        Overrides {
          Name: "Name"
          String: "Pickup Collectable - Skull"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 8348.0625
            Y: -2679.74414
            Z: 651.04248
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 94.1189194
          }
        }
        Overrides {
          Name: "cs:collectable_id"
          Int: 31
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.411944389
            Y: 0.411944389
            Z: 0.411944389
          }
        }
        Overrides {
          Name: "cs:collectable_parent_id"
          Int: 31
        }
      }
    }
    TemplateAsset {
      Id: 18443030339376869299
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
