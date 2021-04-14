Name: "Lily Area"
RootId: 7545929439889716735
Objects {
  Id: 13129468122507211104
  Name: "Lily Area Collectables"
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
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Lily Area Collectables"
  }
}
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
    Value: "mc:ecollisionsetting:forceoff"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Quest Items_1"
  }
}
Objects {
  Id: 8102391460791805462
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: -6035.08691
      Y: -6469.01807
      Z: 47.615387
    }
    Rotation {
      Yaw: -56.3414612
    }
    Scale {
      X: 25.9621048
      Y: 34.4203415
      Z: 25.8218212
    }
  }
  ParentId: 7545929439889716735
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: -752.116
        Y: -724.208
        Z: 240.803
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -55.32
        Yaw: -140.033
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
    Overrides {
      Name: "cs:show_collectables"
      Bool: true
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
