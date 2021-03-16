Name: "Alien Rock 2"
RootId: 15462314122037940146
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
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
      }
    }
    TemplateAsset {
      Id: 2771890355141040469
    }
  }
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
      Int: 2
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
  }
}
