Name: "Alien Rock 3"
RootId: 9657082216612006210
Objects {
  Id: 3456323361475352302
  Name: "Look - Yellow Catalyst Holder"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 9657082216612006210
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
          String: "Look - Yellow Catalyst Holder"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 4075.67627
            Y: -3503.32617
            Z: 383.452942
          }
        }
      }
    }
    TemplateAsset {
      Id: 11707131961769597204
    }
  }
}
Objects {
  Id: 18303776719649945801
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 3949.13525
      Y: -3481.16821
      Z: 536.362061
    }
    Rotation {
      Yaw: -28.1885376
    }
    Scale {
      X: 11.8781586
      Y: 6.13661528
      Z: 11.2236528
    }
  }
  ParentId: 9657082216612006210
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 9016.92285
        Y: 1915.01196
        Z: 445.983
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -6.5
        Yaw: 156.499
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
