Name: "COFFEE SPAWNER_2"
RootId: 17939633550798248805
Objects {
  Id: 6061743201988415416
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
  ParentId: 17939633550798248805
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
  InstanceHistory {
    SelfId: 6061743201988415416
    SubobjectId: 6015517850887023665
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 10834823114162375796
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
  ParentId: 17939633550798248805
  ChildIds: 9592454258958630996
  ChildIds: 5363595551134699445
  ChildIds: 4591575384966947740
  ChildIds: 18056180313381835906
  ChildIds: 1108029145847484609
  ChildIds: 2525219402187367886
  ChildIds: 8585936214720062477
  ChildIds: 8725861752557578039
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
  InstanceHistory {
    SelfId: 10834823114162375796
    SubobjectId: 10464620582411169789
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 8725861752557578039
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: -19.9111328
      Y: 37.7744141
      Z: -98.6870728
    }
    Rotation {
      Pitch: 28.2680759
      Yaw: -117.464523
      Roll: 135.913376
    }
    Scale {
      X: 0.16240257
      Y: 0.162403315
      Z: 1.06094182
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 8725861752557578039
    SubobjectId: 9114361807061927102
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 8585936214720062477
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: 47.8232422
      Y: 48.9118652
      Z: -170.166748
    }
    Rotation {
      Pitch: -46.6175842
      Yaw: -143.05452
      Roll: 7.95521e-05
    }
    Scale {
      X: 0.250951231
      Y: 0.250951231
      Z: 0.925686061
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 8585936214720062477
    SubobjectId: 8089473945251727236
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 2525219402187367886
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: -16.6455078
      Y: 82.685791
      Z: -161.261292
    }
    Rotation {
      Pitch: 50.9863892
      Yaw: 113.503281
      Roll: 2.4412715e-05
    }
    Scale {
      X: 0.259226173
      Y: 0.259226173
      Z: 0.956209779
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 2525219402187367886
    SubobjectId: 2625505556034586183
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 1108029145847484609
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: -39.8486328
      Y: -38.2155762
      Z: -163.515686
    }
    Rotation {
      Yaw: -36.2859383
      Roll: 42.3208199
    }
    Scale {
      X: 0.293153226
      Y: 0.293153226
      Z: 0.910720825
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 1108029145847484609
    SubobjectId: 577666287195927368
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 18056180313381835906
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: 27.4169922
      Y: 12.4790039
      Z: -161.261292
    }
    Rotation {
      Pitch: 50.9865379
    }
    Scale {
      X: 0.259226173
      Y: 0.259226173
      Z: 0.956209779
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 18056180313381835906
    SubobjectId: 18298330456787678987
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 4591575384966947740
  Name: "Cylinder - Rounded Small"
  Transform {
    Location {
      X: -63.7939453
      Y: 12.4790039
      Z: -170.166748
    }
    Rotation {
      Pitch: -46.6179085
      Yaw: 24.0536022
      Roll: 1.61591179e-05
    }
    Scale {
      X: 0.293153226
      Y: 0.293153226
      Z: 1.08135688
    }
  }
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 5363993666353589030
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
  InstanceHistory {
    SelfId: 4591575384966947740
    SubobjectId: 4097228590904311829
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 5363595551134699445
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
  ParentId: 10834823114162375796
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
  InstanceHistory {
    SelfId: 5363595551134699445
    SubobjectId: 5551701880535723068
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
Objects {
  Id: 9592454258958630996
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
  ParentId: 10834823114162375796
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 10834823114162375796
      }
    }
    Overrides {
      Name: "cs:ShowHideObject"
      ObjectReference {
        SelfId: 5363595551134699445
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
  InstanceHistory {
    SelfId: 9592454258958630996
    SubobjectId: 9402377602572051421
    InstanceId: 4615313895821986510
    TemplateId: 8791256523911820058
  }
}
