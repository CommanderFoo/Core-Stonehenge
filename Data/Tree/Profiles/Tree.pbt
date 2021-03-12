Name: "Profiles"
RootId: 17623482558702204384
Objects {
  Id: 2143668795934715948
  Name: "Nighttime"
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
  ParentId: 17623482558702204384
  UnregisteredParameters {
    Overrides {
      Name: "cs:rotate_sky"
      Bool: true
    }
    Overrides {
      Name: "cs:tween_duration"
      Float: 5
    }
    Overrides {
      Name: "cs:tween_delay"
      Float: 1
    }
    Overrides {
      Name: "cs:tween"
      Bool: true
    }
    Overrides {
      Name: "cs:sun_light_end_rotation"
      Rotator {
        Pitch: -90
      }
    }
    Overrides {
      Name: "cs:rain"
      Bool: false
    }
    Overrides {
      Name: "cs:sky_dome_color"
      Color {
        R: 0.0180001259
        A: 1
      }
    }
    Overrides {
      Name: "cs:sky_light_intensity"
      Float: 1.2
    }
    Overrides {
      Name: "cs:star_dome_visibility"
      Float: 1
    }
    Overrides {
      Name: "cs:sky_light_color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:sun_light_intensity"
      Float: 0.5
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
      Id: 1170510815346568301
    }
  }
}
Objects {
  Id: 12443586333425894465
  Name: "Daytime"
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
  ParentId: 17623482558702204384
  UnregisteredParameters {
    Overrides {
      Name: "cs:rotate_sky"
      Bool: true
    }
    Overrides {
      Name: "cs:tween_duration"
      Float: 20
    }
    Overrides {
      Name: "cs:tween_delay"
      Float: 2
    }
    Overrides {
      Name: "cs:tween"
      Bool: true
    }
    Overrides {
      Name: "cs:sun_light_end_rotation"
      Rotator {
        Pitch: -50
      }
    }
    Overrides {
      Name: "cs:rain"
      Bool: false
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
      Id: 1170510815346568301
    }
  }
}
Objects {
  Id: 7569862637034317652
  Name: "Sunrise"
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
  ParentId: 17623482558702204384
  UnregisteredParameters {
    Overrides {
      Name: "cs:sky_dome_brightness"
      Float: 0.3
    }
    Overrides {
      Name: "cs:sky_dome_color"
      Color {
        R: 0.392708302
        G: 0.392708302
        B: 0.392708302
        A: 1
      }
    }
    Overrides {
      Name: "cs:sky_light_color"
      Color {
        R: 1
        G: 0.99999994
        B: 0.410000026
        A: 1
      }
    }
    Overrides {
      Name: "cs:sun_light_color"
      Color {
        R: 1
        G: 0.487904787
        B: 0.434000015
        A: 1
      }
    }
    Overrides {
      Name: "cs:sun_light_intensity"
      Float: 0.2
    }
    Overrides {
      Name: "cs:sun_light_start_rotation"
      Rotator {
      }
    }
    Overrides {
      Name: "cs:sun_light_end_rotation"
      Rotator {
        Pitch: -11
      }
    }
    Overrides {
      Name: "cs:rain"
      Bool: false
    }
    Overrides {
      Name: "cs:rain_density"
      Int: 180
    }
    Overrides {
      Name: "cs:thunder"
      Bool: false
    }
    Overrides {
      Name: "cs:sky_light_intensity"
      Float: 1
    }
    Overrides {
      Name: "cs:rotate_sky"
      Bool: true
    }
    Overrides {
      Name: "cs:lightning"
      Bool: false
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
      Id: 1170510815346568301
    }
  }
}
