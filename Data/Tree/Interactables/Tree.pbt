Name: "Interactables"
RootId: 13207548860357947295
Objects {
  Id: 6142473020984377152
  Name: "Item Pickup Example"
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
          String: "Item Pickup Example"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -17176.0625
            Y: -4313.21484
            Z: 1616.66882
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    TemplateAsset {
      Id: 7681314977375388580
    }
  }
}
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
  ChildIds: 307046500729566719
  ChildIds: 16449868953798213689
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
  Id: 16449868953798213689
  Name: "Item Pickup Sub Example"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15427196770349038411
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 11656462785356384221
      value {
        Overrides {
          Name: "Name"
          String: "Item Pickup Sub Example"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: 53.0546875
            Y: 39.7084961
            Z: 188.563843
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12977088586266084573
      value {
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -31.0683594
            Y: 45.9160156
            Z: 36.5229492
          }
        }
      }
    }
    TemplateAsset {
      Id: 4650998914355063426
    }
  }
}
Objects {
  Id: 307046500729566719
  Name: "Item Look Sub Example"
  Transform {
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 15427196770349038411
  WantsNetworking: true
  TemplateInstance {
    ParameterOverrideMap {
      key: 11656462785356384221
      value {
        Overrides {
          Name: "Name"
          String: "Item Look Sub Example"
        }
        Overrides {
          Name: "Position"
          Vector {
            X: -56.3144531
            Y: 68.9238281
            Z: 204.453979
          }
        }
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
        Overrides {
          Name: "Scale"
          Vector {
            X: 1
            Y: 1
            Z: 1
          }
        }
      }
    }
    ParameterOverrideMap {
      key: 12977088586266084573
      value {
        Overrides {
          Name: "Rotation"
          Rotator {
          }
        }
      }
    }
    TemplateAsset {
      Id: 12190793945212562802
    }
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
    Overrides {
      Name: "cs:quest_id"
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
