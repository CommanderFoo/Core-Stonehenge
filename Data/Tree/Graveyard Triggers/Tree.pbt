Name: "Graveyard Triggers"
RootId: 5282304637673814853
Objects {
  Id: 8903317352187573736
  Name: "Client"
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
  ParentId: 5282304637673814853
  ChildIds: 7841918726441744978
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 7841918726441744978
  Name: "Quest_Graveyard_Triggers"
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
  ParentId: 8903317352187573736
  UnregisteredParameters {
    Overrides {
      Name: "cs:Trigger"
      ObjectReference {
        SelfId: 17279413379456054898
      }
    }
    Overrides {
      Name: "cs:Trigger_1"
      ObjectReference {
        SelfId: 10102240458105597596
      }
    }
    Overrides {
      Name: "cs:Trigger_2"
      ObjectReference {
        SelfId: 18287678214436364449
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 938798507570256682
    }
  }
}
Objects {
  Id: 18287678214436364449
  Name: "Trigger 3"
  Transform {
    Location {
      X: -17610.7051
      Y: -4325.5127
      Z: 1851.18042
    }
    Rotation {
      Yaw: 74.9121552
    }
    Scale {
      X: 8.16953087
      Y: 5.65527201
      Z: 4.8975358
    }
  }
  ParentId: 5282304637673814853
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
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
  Id: 10102240458105597596
  Name: "Trigger 2"
  Transform {
    Location {
      X: -16664.6777
      Y: -3536.38306
      Z: 1851.18042
    }
    Rotation {
      Yaw: -38.354126
    }
    Scale {
      X: 12.611207
      Y: 5.65526724
      Z: 4.8975358
    }
  }
  ParentId: 5282304637673814853
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
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
  Id: 17279413379456054898
  Name: "Trigger 1"
  Transform {
    Location {
      X: -16802.9121
      Y: -4563.51465
      Z: 1851.18042
    }
    Rotation {
    }
    Scale {
      X: 8.16953087
      Y: 8.46114
      Z: 4.8975358
    }
  }
  ParentId: 5282304637673814853
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Trigger {
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
