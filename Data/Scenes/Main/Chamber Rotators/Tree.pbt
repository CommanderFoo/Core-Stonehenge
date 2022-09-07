Name: "Chamber Rotators"
RootId: 13115652778135981047
Objects {
  Id: 5402142256756570582
  Name: "Rotators"
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
  ParentId: 13115652778135981047
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Rotators"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16707183771860033047
  Name: "Rotators"
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
  ParentId: 13115652778135981047
  ChildIds: 1996233857515931477
  ChildIds: 12917990696657955251
  ChildIds: 7812378467271939242
  ChildIds: 3969289712175299732
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
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3969289712175299732
  Name: "Red"
  Transform {
    Location {
      X: -507.927734
      Y: 310.718079
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 3976429479011223857
  ChildIds: 13319267358613594869
  ChildIds: 367290383231798215
  ChildIds: 4010629983080973623
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4010629983080973623
  Name: "Rotator Center"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3969289712175299732
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1641279718894758573
      value {
        Overrides {
          Name: "Name"
          String: "Rotator Center"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: -0.000183105469
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 2.16654968
            Y: 2.16654968
            Z: 0.729577839
          }
        }
      }
    }
    TemplateAsset {
      Id: 3679702700024304551
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 367290383231798215
  Name: "Outline Object"
  Transform {
    Location {
      X: 5509.95654
      Y: 2563.33179
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.336666584
        G: 1.80602029e-07
        A: 1
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
        SelfId: 9067006100597830677
        SubObjectId: 1641279718894758573
        InstanceId: 4010629983080973623
        TemplateId: 3679702700024304551
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13319267358613594869
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813614
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3976429479011223857
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.81366
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 7812378467271939242
  Name: "Yellow"
  Transform {
    Location {
      X: 511.853027
      Y: -312.714905
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 17363893734076196726
  ChildIds: 2269875955449447161
  ChildIds: 14652138206977616986
  ChildIds: 4176636789984040048
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 4176636789984040048
  Name: "Rotator Center"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7812378467271939242
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1641279718894758573
      value {
        Overrides {
          Name: "Name"
          String: "Rotator Center"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: -6.10351562e-05
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 3679702700024304551
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 14652138206977616986
  Name: "Outline Object"
  Transform {
    Location {
      X: 4490.17578
      Y: 3186.76489
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.968763649
        G: 1
        B: 0.0566666126
        A: 1
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
        SelfId: 582489672592134053
        SubObjectId: 1641279718894758573
        InstanceId: 4176636789984040048
        TemplateId: 3679702700024304551
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2269875955449447161
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.81356
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17363893734076196726
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813599
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12917990696657955251
  Name: "White"
  Transform {
    Location {
      X: 298.651367
      Y: 513.610291
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 11259834771029286710
  ChildIds: 2876256248829041466
  ChildIds: 10627906296156234297
  ChildIds: 18419771671517971870
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18419771671517971870
  Name: "Rotator Center"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12917990696657955251
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 1641279718894758573
      value {
        Overrides {
          Name: "Name"
          String: "Rotator Center"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: -6.10351562e-05
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 2.16654968
            Y: 2.16654968
            Z: 0.729577839
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: 90
          }
        }
      }
    }
    TemplateAsset {
      Id: 3679702700024304551
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10627906296156234297
  Name: "Outline Object"
  Transform {
    Location {
      X: 4703.37744
      Y: 2360.4397
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
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
        SelfId: 3055475381032601107
        SubObjectId: 1641279718894758573
        InstanceId: 18419771671517971870
        TemplateId: 3679702700024304551
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 2876256248829041466
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813545
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11259834771029286710
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813515
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1996233857515931477
  Name: "Blue"
  Transform {
    Location {
      X: -302.577637
      Y: -511.613434
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 6127157498587267468
  ChildIds: 18422124027195523926
  ChildIds: 11755248568333856431
  ChildIds: 9708753677580275772
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9708753677580275772
  Name: "Outline Object"
  Transform {
    Location {
      X: 5304.60645
      Y: 3385.66309
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
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
        SelfId: 8012908256909681383
        SubObjectId: 1641279718894758573
        InstanceId: 11755248568333856431
        TemplateId: 3679702700024304551
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
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 11755248568333856431
  Name: "Rotator Center"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1996233857515931477
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  TemplateInstance {
    ParameterOverrideMap {
      key: 476390750739509476
      value {
        Overrides {
          Name: "bp:Emissive Boost"
          Float: 0
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -43.8640137
            Y: 25.08041
            Z: -2.86914062
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 34.9781799
            Yaw: -164.510361
            Roll: -113.623322
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.108017668
            Y: 0.0541557521
            Z: -0.204874739
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 1641279718894758573
      value {
        Overrides {
          Name: "Name"
          String: "Rotator Center"
        }
        Overrides {
          Name: "Position"
          Vector {
            Y: -0.000152587891
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Yaw: -179.999985
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 14914401197355038613
      value {
        Overrides {
          Name: "bp:Emissive Boost"
          Float: 0
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -45.262207
            Y: 19.6250572
            Z: 13.6699219
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
            Pitch: 34.9792671
            Yaw: -164.512726
            Roll: -113.623199
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 0.108017668
            Y: -0.0541557521
            Z: 0.204874739
          }
        }
      }
    }
    TemplateAsset {
      Id: 3679702700024304551
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 18422124027195523926
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813675
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6127157498587267468
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813713
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
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
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
