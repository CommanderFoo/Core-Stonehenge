Name: "Alien Rock 4"
RootId: 16647472273432662559
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
      }
    }
    TemplateAsset {
      Id: 143747440703481674
    }
  }
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
        Y: 4735.32813
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
