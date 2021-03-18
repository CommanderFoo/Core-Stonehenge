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
  ChildIds: 3621706949446435895
  ChildIds: 17280330074716517188
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
  Id: 17280330074716517188
  Name: "Quest_Chamber_Server"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
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
      Id: 2569019415965554160
    }
  }
}
Objects {
  Id: 3621706949446435895
  Name: "Quest_Catalysts_Server"
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
      Name: "cs:red"
      ObjectReference {
        SelfId: 7636736020991448615
      }
    }
    Overrides {
      Name: "cs:blue"
      ObjectReference {
        SelfId: 12438410753766084320
        SubObjectId: 423913690008197879
        InstanceId: 11024059923477305324
        TemplateId: 2771890355141040469
      }
    }
    Overrides {
      Name: "cs:yellow"
      ObjectReference {
        SelfId: 16752649196760877375
        SubObjectId: 423913690008197879
        InstanceId: 3456323361475352302
        TemplateId: 11707131961769597204
      }
    }
    Overrides {
      Name: "cs:white"
      ObjectReference {
        SelfId: 14093627656330588851
        SubObjectId: 423913690008197879
        InstanceId: 16747101702694671599
        TemplateId: 143747440703481674
      }
    }
    Overrides {
      Name: "cs:collider_rock_55b"
      ObjectReference {
        SelfId: 11018261184786272866
      }
    }
    Overrides {
      Name: "cs:collider_rock_55a"
      ObjectReference {
        SelfId: 16292385668770916190
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
      Id: 15826416419010025735
    }
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
  ChildIds: 175640858615260086
  ChildIds: 1877532149501611667
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
  Id: 1877532149501611667
  Name: "Quest_Chamber_Client"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
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
      Id: 4391553918667911940
    }
  }
}
Objects {
  Id: 175640858615260086
  Name: "Quest_Catalysts_Client"
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
      Name: "cs:visual_rock_55b"
      ObjectReference {
        SelfId: 13277615482823439019
      }
    }
    Overrides {
      Name: "cs:visual_rock_55a"
      ObjectReference {
        SelfId: 16518421102946950198
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
      Id: 16626480252388259615
    }
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
