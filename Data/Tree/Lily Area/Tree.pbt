Name: "Lily Area"
RootId: 7545929439889716735
Objects {
  Id: 13435184631131098900
  Name: "Quest Items"
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
  ParentId: 7545929439889716735
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Quest Items"
  }
}
Objects {
  Id: 8102391460791805462
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: -2543.9209
      Y: -3542.30713
      Z: 536.362061
    }
    Rotation {
      Yaw: -35.2316895
    }
    Scale {
      X: 17.1757793
      Y: 16.8792801
      Z: 14.4259186
    }
  }
  ParentId: 7545929439889716735
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 2308.29712
        Y: 2319.2439
        Z: 216.023
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -35.498
        Yaw: -117.999
      }
    }
    Overrides {
      Name: "cs:quest_id"
      Int: 4
    }
    Overrides {
      Name: "cs:raycast_distance"
      Int: 500
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
    InteractionLabel: "Inspect Ditch"
    TeamSettings {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    TriggerShape_v2 {
      Value: "mc:etriggershape:box"
    }
  }
}
