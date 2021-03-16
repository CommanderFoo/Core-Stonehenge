Name: "Excavation Site"
RootId: 11515639102854451372
Objects {
  Id: 17641711033790984854
  Name: "Inspect Trigger"
  Transform {
    Location {
      X: 3038.94287
      Y: 2545.04443
      Z: -297.634155
    }
    Rotation {
      Yaw: -35.2316589
    }
    Scale {
      X: 10.7252407
      Y: 7.17576694
      Z: 4.96152592
    }
  }
  ParentId: 11515639102854451372
  UnregisteredParameters {
    Overrides {
      Name: "cs:cam_pos"
      Vector {
        X: 8006.40381
        Y: 7865.72
        Z: -184.571
      }
    }
    Overrides {
      Name: "cs:cam_rot"
      Rotator {
        Pitch: -34.501
        Yaw: 120.992
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Quest Items_1"
  }
}
