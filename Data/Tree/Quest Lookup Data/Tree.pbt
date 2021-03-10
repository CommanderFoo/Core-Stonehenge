Name: "Quest Lookup Data"
RootId: 15892015409261034309
Objects {
  Id: 10153709130360841429
  Name: "Old Friend Quest"
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
  ParentId: 15892015409261034309
  ChildIds: 9128649565411274043
  UnregisteredParameters {
    Overrides {
      Name: "cs:quest_id"
      Int: 1
    }
    Overrides {
      Name: "cs:quest_title"
      String: "Old Friend"
    }
    Overrides {
      Name: "cs:quest_line_width"
      Int: 150
    }
    Overrides {
      Name: "cs:quest_delay"
      Float: 3
    }
    Overrides {
      Name: "cs:quest_notification"
      String: "A letter has been delivered to your inventory."
    }
    Overrides {
      Name: "cs:quest_notification_delay"
      Float: 0.5
    }
    Overrides {
      Name: "cs:quest_inventory_item"
      String: "8C33CABFE8112B30:Letter UI"
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
      Id: 3474319897268104530
    }
  }
}
Objects {
  Id: 9128649565411274043
  Name: "Quest_Data_Item"
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
  ParentId: 10153709130360841429
  UnregisteredParameters {
    Overrides {
      Name: "cs:id"
      Int: 1
    }
    Overrides {
      Name: "cs:title"
      String: "Read letter"
    }
    Overrides {
      Name: "cs:line_width"
      Int: 22
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
      Id: 4937853632588239016
    }
  }
}
