Name: "Chamber Effects"
RootId: 6426394992514259483
Objects {
  Id: 14051080126880252253
  Name: "Beams"
  Transform {
    Location {
      X: 200.722778
      Y: -2587.03223
      Z: -1427.57922
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6426394992514259483
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
    FilePartitionName: "Beams"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9886569727362114225
  Name: "Plasma Charge Up Hold VFX"
  Transform {
    Location {
      X: 217.966309
      Y: -2592.53589
      Z: -1633.6853
    }
    Rotation {
    }
    Scale {
    }
  }
  ParentId: 6426394992514259483
  UnregisteredParameters {
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.570000172
        G: 2.71797262e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Inner Core Color"
      Color {
        R: 0.946000099
        G: 0.94600004
        A: 1
      }
    }
    Overrides {
      Name: "bp:Outer Core Color"
      Color {
        R: 0.203110337
        B: 0.914000034
        A: 1
      }
    }
    Overrides {
      Name: "bp:Arc Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Hot Spot Color"
      Color {
        R: 0.97
        G: 0.939206243
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 12.6008244
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 4667815335260131660
    }
    TeamSettings {
    }
    Vfx {
      AutoPlay: true
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9745619904137181038
  Name: "Electricity Spark Arc Loop 01 SFX"
  Transform {
    Location {
      X: 217.966309
      Y: -2592.53589
      Z: -1633.6853
    }
    Rotation {
    }
    Scale {
    }
  }
  ParentId: 6426394992514259483
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 5125050213319006906
    }
    Repeat: true
    Volume: 1
    Falloff: -1
    Radius: -1
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
