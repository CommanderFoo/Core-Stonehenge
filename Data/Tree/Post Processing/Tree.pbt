Name: "Post Processing"
RootId: 5146307863390194199
Objects {
  Id: 14889859277598113452
  Name: "Environment Fog Default VFX"
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
  ParentId: 5146307863390194199
  UnregisteredParameters {
    Overrides {
      Name: "bp:Fog Density"
      Float: 0
    }
    Overrides {
      Name: "bp:Volumetric Fog"
      Bool: true
    }
    Overrides {
      Name: "bp:Directional Inscattering Color"
      Color {
        R: 0.0968750343
        G: 0.0968750343
        B: 0.0968750343
        A: 1
      }
    }
    Overrides {
      Name: "bp:Falloff"
      Float: 3
    }
    Overrides {
      Name: "bp:Start"
      Float: 500
    }
    Overrides {
      Name: "bp:Albedo"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Layered Fog Density"
      Float: 6.17016888
    }
    Overrides {
      Name: "bp:color"
      Color {
        R: 0.0968750343
        G: 0.0968750343
        B: 0.0968750343
        A: 1
      }
    }
    Overrides {
      Name: "bp:Layered Fog Offset Height"
      Float: 30
    }
    Overrides {
      Name: "bp:Layered Fog Falloff"
      Float: 1
    }
    Overrides {
      Name: "bp:opacity"
      Float: 1
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Opacity"
      Float: 1
    }
    Overrides {
      Name: "bp:Light Absorption Amount"
      Float: 0.1
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceon"
  }
  Blueprint {
    BlueprintAsset {
      Id: 17392062504371618374
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 1019140721159124216
  Name: "Advanced Bloom Post Process"
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
  ParentId: 5146307863390194199
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 2.26670218
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
      Id: 7581470055665958535
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 12413757627095537710
  Name: "Ambient Occlusion Post Process"
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
  ParentId: 5146307863390194199
  UnregisteredParameters {
    Overrides {
      Name: "bp:Intensity"
      Float: 0.860399425
    }
    Overrides {
      Name: "bp:Radius"
      Float: 250
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
      Id: 689107862840861896
    }
    TeamSettings {
    }
  }
}
