Name: "Interactables"
RootId: 13207548860357947295
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
      Yaw: -32.6372375
    }
    Scale {
      X: 25.4968719
      Y: 22.2636
      Z: 14.1601601
    }
  }
  ParentId: 13207548860357947295
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
  Id: 11515639102854451372
  Name: "Excavation Site"
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
  ParentId: 13207548860357947295
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Excavation Site"
  }
}
Objects {
  Id: 14496764963604168968
  Name: "Tent"
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
  ParentId: 13207548860357947295
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Tent"
  }
}
