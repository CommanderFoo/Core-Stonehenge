Name: "White Rock"
RootId: 16647472273432662559
Objects {
  Id: 1218071476739836915
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
  ParentId: 16647472273432662559
  ChildIds: 12145837874599329578
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
  Id: 12145837874599329578
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
  ParentId: 1218071476739836915
  UnregisteredParameters {
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 13399665426817606035
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
  Id: 16747101702694671599
  Name: "Look - White Catalyst Holder"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16647472273432662559
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
          String: "Look - White Catalyst Holder"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 3929.62256
            Y: -766.461426
            Z: 179.3535
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
      Id: 143747440703481674
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 13073896173444103109
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 3945.49658
      Y: -778.980469
      Z: 536.362061
    }
    Rotation {
      Yaw: -28.1885376
    }
    Scale {
      X: 10.9616747
      Y: 9.95637131
      Z: 11.2236528
    }
  }
  ParentId: 16647472273432662559
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 8782.83594
        Y: 4735.32812
        Z: 262.983
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -56.999
        Yaw: -151.498
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
