Name: "Scripts"
RootId: 1636163160051171366
Objects {
  Id: 1946733176415873648
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
  ParentId: 1636163160051171366
  ChildIds: 8918359137435581373
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 8918359137435581373
  Name: "Game_Manager_Server"
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
  ParentId: 1946733176415873648
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 10587009959948792201
    }
  }
}
Objects {
  Id: 14858104107515101237
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
  ParentId: 1636163160051171366
  ChildIds: 14011554834230406344
  ChildIds: 2047586879273444450
  ChildIds: 12260364437696698950
  ChildIds: 17736113158384268222
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 17736113158384268222
  Name: "Player_Client"
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
  ParentId: 14858104107515101237
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 12383539238061812337
    }
  }
}
Objects {
  Id: 12260364437696698950
  Name: "Game_Manager_Client"
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
  ParentId: 14858104107515101237
  UnregisteredParameters {
    Overrides {
      Name: "cs:transition_loader"
      ObjectReference {
        SelfId: 6431924018740162976
      }
    }
    Overrides {
      Name: "cs:loading"
      ObjectReference {
        SelfId: 13338400529217129791
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
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
      Id: 17975100139619162001
    }
  }
}
Objects {
  Id: 2047586879273444450
  Name: "Weather_Manager_Client"
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
  ParentId: 14858104107515101237
  UnregisteredParameters {
    Overrides {
      Name: "cs:rain_volume"
      ObjectReference {
        SelfId: 7979889722684355965
      }
    }
    Overrides {
      Name: "cs:sky_dome"
      ObjectReference {
        SelfId: 13551641546322277000
      }
    }
    Overrides {
      Name: "cs:sky_light"
      ObjectReference {
        SelfId: 7155168770677928712
      }
    }
    Overrides {
      Name: "cs:sun_light"
      ObjectReference {
        SelfId: 10505154200474359396
      }
    }
    Overrides {
      Name: "cs:sarsen_rocks"
      ObjectReference {
        SelfId: 3454851153808035443
      }
    }
    Overrides {
      Name: "cs:bluestone_rocks"
      ObjectReference {
        SelfId: 9321656404648590740
      }
    }
    Overrides {
      Name: "cs:sarsen_rocks_wet"
      ObjectReference {
        SelfId: 841534158063459245
      }
    }
    Overrides {
      Name: "cs:bluestone_rocks_wet"
      ObjectReference {
        SelfId: 841534158063459245
      }
    }
    Overrides {
      Name: "cs:rain_sound"
      ObjectReference {
        SelfId: 17816937463263935439
      }
    }
    Overrides {
      Name: "cs:thunder_sound"
      ObjectReference {
        SelfId: 11119204773295177232
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
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
      Id: 12530411993697215409
    }
  }
}
Objects {
  Id: 14011554834230406344
  Name: "Audio_Manager_Client"
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
  ParentId: 14858104107515101237
  UnregisteredParameters {
    Overrides {
      Name: "cs:bird_sounds"
      ObjectReference {
        SelfId: 10805811681648458774
      }
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
      Id: 16641764659941222185
    }
  }
}
