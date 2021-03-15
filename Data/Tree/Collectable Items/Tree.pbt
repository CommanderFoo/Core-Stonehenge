Name: "Collectable Items"
RootId: 16845918078398887905
Objects {
  Id: 13509070545373344982
  Name: "Pickup Sub Collectable - Pot"
  Transform {
    Location {
      X: 2556.9375
      Y: 1502.31946
      Z: -387.079041
    }
    Rotation {
      Roll: -0.543426454
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16845918078398887905
  ChildIds: 1325550546998631261
  UnregisteredParameters {
    Overrides {
      Name: "cs:type"
      String: "sub_collectable_pickup"
    }
    Overrides {
      Name: "cs:collectable_id"
      Int: 1
    }
  }
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Folder {
    IsGroup: true
  }
  InstanceHistory {
    SelfId: 13509070545373344982
    SubobjectId: 7571116976348559697
    InstanceId: 17763548813490642640
    TemplateId: 6681942669990604598
    WasRoot: true
  }
}
Objects {
  Id: 1325550546998631261
  Name: "Fantasy Clay Pot 02"
  Transform {
    Location {
    }
    Rotation {
      Roll: -1.60082536e-07
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 13509070545373344982
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CoreMesh {
    MeshAsset {
      Id: 8595582568317201205
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    EnableCameraCollision: true
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
  InstanceHistory {
    SelfId: 1325550546998631261
    SubobjectId: 13839161312336762586
    InstanceId: 17763548813490642640
    TemplateId: 6681942669990604598
  }
}
