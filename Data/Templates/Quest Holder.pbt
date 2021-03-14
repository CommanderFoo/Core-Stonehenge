Assets {
  Id: 8028526601050382838
  Name: "Quest Holder"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 13205171618892944490
      Objects {
        Id: 13205171618892944490
        Name: "Quest Holder"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 3139108800441333692
        ChildIds: 7258786696297137822
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 180
          Height: 250
          UIX: -500
          UIY: 100
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Panel {
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 7258786696297137822
        Name: "Quest Title"
        Transform {
          Location {
            X: -12701.4238
            Y: 12813.6543
            Z: -1964.5957
          }
          Rotation {
            Yaw: 118.937782
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 13205171618892944490
        ChildIds: 11424091163987576105
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 105
          Height: 32
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Text {
            Color {
              R: 1
              G: 1
              A: 1
            }
            Size: 18
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 5602189958603134029
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:topleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 11424091163987576105
        Name: "Line"
        Transform {
          Location {
            X: -12701.4238
            Y: 12813.6543
            Z: -1964.5957
          }
          Rotation {
            Yaw: 118.937782
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 7258786696297137822
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 169
          Height: 2
          UIX: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
            }
            Color {
              R: 1
              G: 0.99600023
              A: 0.5
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:bottomleft"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 5602189958603134029
      Name: "Amarante"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "AmaranteRegular_ref"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 76
}
