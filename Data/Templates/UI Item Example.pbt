Assets {
  Id: 17916930565914598543
  Name: "UI Item Example"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 9252116692543917023
      Objects {
        Id: 9252116692543917023
        Name: "UI Item Example"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 10320949908323721065
        ChildIds: 17799389417310730743
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          AddSizeToParentIfUsingParentSize: true
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 9856877556590816424
            }
            Color {
              R: 1
              G: 1
              B: 1
              A: 0.5
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
      Objects {
        Id: 17799389417310730743
        Name: "UI Image"
        Transform {
          Location {
            X: 4610.37842
            Y: -4796.17871
            Z: 10.7058048
          }
          Rotation {
            Yaw: -134.695236
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 9252116692543917023
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        Control {
          RenderTransformPivot {
            Anchor {
              Value: "mc:euianchor:middlecenter"
            }
          }
          UseParentWidth: true
          UseParentHeight: true
          Image {
            Brush {
              Id: 973686557043957374
            }
            Color {
              R: 1
              G: 0.671047568
              B: 0.0580000281
              A: 1
            }
            TeamSettings {
            }
          }
          AnchorLayout {
            SelfAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
            TargetAnchor {
              Anchor {
                Value: "mc:euianchor:middlecenter"
              }
            }
          }
        }
      }
    }
    Assets {
      Id: 9856877556590816424
      Name: "Fantasy Book 014"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Book_014"
      }
    }
    Assets {
      Id: 973686557043957374
      Name: "Fantasy Book 001"
      PlatformAssetType: 9
      PrimaryAsset {
        AssetType: "PlatformBrushAssetRef"
        AssetId: "UI_Fantasy_Equip_Book_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 76
}
