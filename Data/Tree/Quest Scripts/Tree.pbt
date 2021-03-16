Name: "Quest Scripts"
RootId: 6791516816529527173
Objects {
  Id: 921956513660677611
  Name: "Server"
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
  ParentId: 6791516816529527173
  ChildIds: 2971203126402012811
  ChildIds: 1926741659456437005
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 1926741659456437005
  Name: "Quest_Tree_Area_Found_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 7316799702262892750
      }
    }
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 8102391460791805462
      }
    }
    Overrides {
      Name: "cs:quest_items"
      ObjectReference {
        SelfId: 13435184631131098900
      }
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
  Script {
    ScriptAsset {
      Id: 5073575285751573385
    }
  }
}
Objects {
  Id: 2971203126402012811
  Name: "Quest_Excavation_Site_Found_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 17641711033790984854
      }
    }
    Overrides {
      Name: "cs:quest_items"
      ObjectReference {
        SelfId: 2071753453346508907
      }
    }
    Overrides {
      Name: "cs:collectable_items"
      ObjectReference {
        SelfId: 16845918078398887905
      }
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
  Script {
    ScriptAsset {
      Id: 10812463457000525696
    }
  }
}
Objects {
  Id: 12281289070681835054
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
  ParentId: 6791516816529527173
  ChildIds: 3309564819312204076
  ChildIds: 2196393818071005436
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 2196393818071005436
  Name: "Quest_Tree_Area_Found_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 7316799702262892750
      }
    }
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 8102391460791805462
      }
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
  Script {
    ScriptAsset {
      Id: 2867418664345692346
    }
  }
}
Objects {
  Id: 3309564819312204076
  Name: "Quest_Excavation_Site_Found_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 17641711033790984854
      }
    }
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 13959005270884086005
      }
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
  Script {
    ScriptAsset {
      Id: 6513752999457813315
    }
  }
}
