Name: "Excavation Site"
RootId: 11515639102854451372
Objects {
  Id: 17641711033790984854
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 3301.65601
      Y: 1627.12231
      Z: 586.084229
    }
    Rotation {
      Yaw: -32.6372528
    }
    Scale {
      X: 25.4968719
      Y: 22.2636
      Z: 14.1601601
    }
  }
  ParentId: 11515639102854451372
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 3972.62891
        Y: 1172.39294
        Z: 491.982
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -53.996
        Yaw: 146.985
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
