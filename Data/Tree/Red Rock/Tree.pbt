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
  }
}
