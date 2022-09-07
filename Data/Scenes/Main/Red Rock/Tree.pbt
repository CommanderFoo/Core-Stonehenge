Name: "Red Rock"
RootId: 634600162205877151
Objects {
  Id: 7132871474131052978
  Name: "Look - Red Catalyst Holder"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 634600162205877151
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
  TemplateInstance {
    ParameterOverrideMap {
      key: 423913690008197879
      value {
        Overrides {
          Name: "Name"
          String: "Look - Red Catalyst Holder"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 864.661621
            Y: -1300.9917
            Z: 406.100159
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
      Id: 16435211269895572556
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 742806911504740873
  Name: "Red Rock Outline"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
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
  ParentId: 634600162205877151
  ChildIds: 4947993792418632350
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
  Id: 4947993792418632350
  Name: "Outline Object"
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
  ParentId: 742806911504740873
  UnregisteredParameters {
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 8191095322064463065
      }
    }
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
        R: 0.666
        G: 3.17573551e-07
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
  Id: 7055750191758023234
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 900.127441
      Y: -1330.07568
      Z: 536.362061
    }
    Rotation {
      Yaw: -35.2316895
    }
    Scale {
      X: 12.5194225
      Y: 8.54199409
      Z: 11.2236528
    }
  }
  ParentId: 634600162205877151
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 5541.58887
        Y: 4307.25
        Z: 482.983
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -14.5
        Yaw: -31.503
      }
    }
    Overrides {
      Name: "cs:quest_id"
      Int: 0
    }
    Overrides {
      Name: "cs:raycast_distance"
      Int: 500
    }
    Overrides {
      Name: "cs:thought_id"
      Int: 0
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
  Trigger {
    Interactable: true
    InteractionLabel: "Inspect Rock"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
    InteractionTemplate {
    }
    BreadcrumbTemplate {
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
