Name: "Interactables"
RootId: 13207548860357947295
Objects {
  Id: 15427196770349038411
  Name: "Grave Stone"
  Transform {
    Location {
      X: -16847.9609
      Y: -4653.31641
      Z: 1599.26099
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13207548860357947295
  ChildIds: 9911623708852988703
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
}
Objects {
  Id: 9911623708852988703
  Name: "Trigger"
  Transform {
    Location {
      Y: 211.048828
      Z: 187.359253
    }
    Rotation {
    }
    Scale {
      X: 3.02191687
      Y: 3.40921879
      Z: 3.47694755
    }
  }
  ParentId: 15427196770349038411
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: -16833.9609
        Y: -4442.26807
        Z: 1841.62
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -12
        Yaw: -90
      }
    }
    Overrides {
      Name: "cs:cam_fov"
      Float: 58.7006302
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    Interactable: true
    InteractionLabel: "Inspect Grave"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
Objects {
  Id: 13633410558800605509
  Name: "Random Book 1"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13207548860357947295
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 6049751545661728224
      value {
        Overrides {
          Name: "Name"
          String: "Random Book 1"
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -17284.0938
            Y: -4327.56738
            Z: 1656.37109
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
      Id: 13594830724546069167
    }
  }
}
