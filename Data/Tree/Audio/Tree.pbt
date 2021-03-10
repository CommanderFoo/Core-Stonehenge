Name: "Audio"
RootId: 8785401498147143537
Objects {
  Id: 17816937463263935439
  Name: "Rain SFX"
  Transform {
    Location {
      X: 1794.16772
      Y: -3008.89795
      Z: -0.000244140625
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8785401498147143537
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  AudioInstance {
    AudioAsset {
      Id: 15664566670144931286
    }
    Volume: 1
    Falloff: 736.741211
    Radius: 7894.54883
    EnableOcclusion: true
    FadeInTime: 1
    FadeOutTime: 1
    IsSpatializationEnabled: true
    IsAttenuationEnabled: true
  }
}
Objects {
  Id: 11119204773295177232
  Name: "Thunder"
  Transform {
    Location {
      X: 2414.37109
      Y: -2581.90186
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 8785401498147143537
  UnregisteredParameters {
    Overrides {
      Name: "bp:Type"
      Enum {
        Value: "mc:esfx_thunder:23"
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 825870330370596855
    }
    TeamSettings {
    }
    AudioBP {
      Volume: 1.57538271
      Falloff: 3600
      Radius: 7940.55762
      EnableOcclusion: true
      IsSpatializationEnabled: true
      IsAttenuationEnabled: true
    }
  }
}
