Name: "Blue Rock"
RootId: 15462314122037940146
Objects {
  Id: 7470460973101588357
  Name: "Blue Rock Outline"
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
  ParentId: 15462314122037940146
  ChildIds: 205044014289476236
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
  Id: 205044014289476236
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
  ParentId: 7470460973101588357
  UnregisteredParameters {
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 13824855072847399013
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
        G: 0.123587608
        B: 0.458000064
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
  Id: 11024059923477305324
  Name: "Look - Blue Catalyst Holder"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15462314122037940146
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
          String: "Look - Blue Catalyst Holder"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 1590.5708
            Y: -4317.53711
            Z: 2.67009735
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
      Id: 2771890355141040469
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 16067065494105867564
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 1601.6377
      Y: -4304.4292
      Z: 536.362061
    }
    Rotation {
      Yaw: -76.4656372
    }
    Scale {
      X: 10.3484783
      Y: 10.0598202
      Z: 11.2236528
    }
  }
  ParentId: 15462314122037940146
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 6420.19922
        Y: 1101.03
        Z: 165.983
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -58
        Yaw: 87.494
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
