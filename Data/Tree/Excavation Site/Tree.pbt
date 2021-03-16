Name: "Excavation Site"
RootId: 11515639102854451372
Objects {
  Id: 17641711033790984854
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 2974.76172
      Y: 2587.03125
      Z: -223.673218
    }
    Rotation {
      Yaw: -35.2316589
    }
    Scale {
      X: 10.7252455
      Y: 9.36516571
      Z: 5.95646477
    }
  }
  ParentId: 11515639102854451372
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 4791
        Y: 5503
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Yaw: 180
      }
    }
    Overrides {
      Name: "cs:quest_id"
      Int: 2
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
  Trigger {
    Interactable: true
    InteractionLabel: "Inspect Excavation Site"
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
  Id: 16845918078398887905
  Name: "Collectable Items"
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
  ParentId: 11515639102854451372
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Collectable Items"
  }
}
Objects {
  Id: 2071753453346508907
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
  ParentId: 11515639102854451372
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Quest Items"
  }
}
