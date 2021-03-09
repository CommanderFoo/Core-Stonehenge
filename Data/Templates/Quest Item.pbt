Assets {
  Id: 18263410488187278100
  Name: "Quest Item"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 12054966115972498595
      Objects {
        Id: 12054966115972498595
        Name: "Quest Item"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8280600202442703075
        ChildIds: 2383155050607553872
        ChildIds: 2931858148572984635
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 150
          Height: 2
          UIX: 40
          UIY: 55
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
            }
            TeamSettings {
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
        Id: 2383155050607553872
        Name: "Text"
        Transform {
          Location {
            X: -12701.4199
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
        ParentId: 12054966115972498595
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Height: 25
          UIX: 3
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          Text {
            Color {
              R: 1
              G: 0.830285668
              B: 0.514000058
              A: 1
            }
            Size: 14
            Justification {
              Value: "mc:etextjustify:left"
            }
            Font {
              Id: 5248208841683454128
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
      }
      Objects {
        Id: 2931858148572984635
        Name: "Bullet"
        Transform {
          Location {
            X: 0.00390625
            Y: -0.00244140625
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 12054966115972498595
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          Width: 10
          Height: 10
          UIX: -15
          UIY: -2
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          Image {
            Brush {
              Id: 14730016063174144111
            }
            Color {
              R: 1
              G: 0.830285668
              B: 0.514000058
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middleleft"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 5248208841683454128
      Name: "Metamorphous"
      PlatformAssetType: 28
      PrimaryAsset {
        AssetType: "FontAssetRef"
        AssetId: "MetamorphousRegular_ref"
      }
    }
    Assets {
      Id: 14730016063174144111
      Name: "UI Basic Shape Circle"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Basic_Shape_Circle"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 76
}
