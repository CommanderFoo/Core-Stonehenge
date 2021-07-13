Name: "VFX"
RootId: 817005549847842594
Objects {
  Id: 7979889722684355965
  Name: "Rain Volume VFX"
  Transform {
    Location {
      X: 2517.32666
      Y: -2304.45337
      Z: 876.698
    }
    Rotation {
    }
    Scale {
      X: 110
      Y: 110
      Z: 1
    }
  }
  ParentId: 817005549847842594
  UnregisteredParameters {
    Overrides {
      Name: "bp:Visible In Preview"
      Bool: false
    }
    Overrides {
      Name: "bp:Volume Type"
      Enum {
        Value: "mc:evfxvolumetype:3"
      }
    }
    Overrides {
      Name: "bp:Density"
      Float: 10
    }
    Overrides {
      Name: "bp:Life"
      Float: 2
    }
    Overrides {
      Name: "bp:Velocity"
      Vector {
        X: 1
        Z: -10
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Blueprint {
    BlueprintAsset {
      Id: 10364379817274561825
    }
    TeamSettings {
    }
    Vfx {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
