Name: "Quest Scripts"
RootId: 6791516816529527173
Objects {
  Id: 921956513660677611
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
  ParentId: 6791516816529527173
  ChildIds: 2971203126402012811
  ChildIds: 1926741659456437005
  ChildIds: 3621706949446435895
  ChildIds: 17280330074716517188
  ChildIds: 4550203403171480337
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
    Type: Server
  }
}
Objects {
  Id: 4550203403171480337
  Name: "Quest_Unknown_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:portal"
      ObjectReference {
        SelfId: 15977208913666398017
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
  Script {
    ScriptAsset {
      Id: 9375215146473997116
    }
  }
}
Objects {
  Id: 17280330074716517188
  Name: "Quest_Chamber_Server"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 921956513660677611
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 2569019415965554160
    }
  }
}
Objects {
  Id: 3621706949446435895
  Name: "Quest_Catalysts_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:red"
      ObjectReference {
        SelfId: 7636736020991448615
      }
    }
    Overrides {
      Name: "cs:blue"
      ObjectReference {
        SelfId: 12438410753766084320
        SubObjectId: 423913690008197879
        InstanceId: 11024059923477305324
        TemplateId: 2771890355141040469
      }
    }
    Overrides {
      Name: "cs:yellow"
      ObjectReference {
        SelfId: 16752649196760877375
        SubObjectId: 423913690008197879
        InstanceId: 3456323361475352302
        TemplateId: 11707131961769597204
      }
    }
    Overrides {
      Name: "cs:white"
      ObjectReference {
        SelfId: 14093627656330588851
        SubObjectId: 423913690008197879
        InstanceId: 16747101702694671599
        TemplateId: 143747440703481674
      }
    }
    Overrides {
      Name: "cs:collider_rock_55b"
      ObjectReference {
        SelfId: 11018261184786272866
      }
    }
    Overrides {
      Name: "cs:collider_rock_55a"
      ObjectReference {
        SelfId: 16292385668770916190
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
  Script {
    ScriptAsset {
      Id: 15826416419010025735
    }
  }
}
Objects {
  Id: 1926741659456437005
  Name: "Quest_Tree_Area_Found_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 7316799702262892750
      }
    }
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 8102391460791805462
      }
    }
    Overrides {
      Name: "cs:quest_items"
      ObjectReference {
        SelfId: 13435184631131098900
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
  Script {
    ScriptAsset {
      Id: 5073575285751573385
    }
  }
}
Objects {
  Id: 2971203126402012811
  Name: "Quest_Excavation_Site_Found_Server"
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
  ParentId: 921956513660677611
  UnregisteredParameters {
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 17641711033790984854
      }
    }
    Overrides {
      Name: "cs:quest_items"
      ObjectReference {
        SelfId: 2071753453346508907
      }
    }
    Overrides {
      Name: "cs:collectable_items"
      ObjectReference {
        SelfId: 16845918078398887905
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
  Script {
    ScriptAsset {
      Id: 10812463457000525696
    }
  }
}
Objects {
  Id: 12281289070681835054
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
  ParentId: 6791516816529527173
  ChildIds: 3309564819312204076
  ChildIds: 2196393818071005436
  ChildIds: 175640858615260086
  ChildIds: 1877532149501611667
  ChildIds: 18136122010751220708
  ChildIds: 4459834541766883327
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  NetworkContext {
  }
}
Objects {
  Id: 4459834541766883327
  Name: "Quest_Lily_Flowers_Switcher_Client"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:dig_normal"
      ObjectReference {
        SelfId: 11137859157199852391
      }
    }
    Overrides {
      Name: "cs:dig_glowing"
      ObjectReference {
        SelfId: 6615342702258295258
      }
    }
    Overrides {
      Name: "cs:grove_normal"
      ObjectReference {
        SelfId: 3301681575500954397
      }
    }
    Overrides {
      Name: "cs:grove_glowing"
      ObjectReference {
        SelfId: 1682813434280546198
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
  Script {
    ScriptAsset {
      Id: 17046783500120358289
    }
  }
}
Objects {
  Id: 18136122010751220708
  Name: "Quest_Unknown_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:portal"
      ObjectReference {
        SelfId: 15977208913666398017
      }
    }
    Overrides {
      Name: "cs:ball"
      ObjectReference {
        SelfId: 9886569727362114225
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:end_panel"
      ObjectReference {
        SelfId: 15544317065579204847
      }
    }
    Overrides {
      Name: "cs:transition"
      ObjectReference {
        SelfId: 16385539254912370512
      }
    }
    Overrides {
      Name: "cs:back"
      ObjectReference {
        SelfId: 1850335544420336254
      }
    }
    Overrides {
      Name: "cs:support_us"
      ObjectReference {
        SelfId: 1365477041652106294
      }
    }
    Overrides {
      Name: "cs:thanks"
      ObjectReference {
        SelfId: 16504378562379632544
      }
    }
    Overrides {
      Name: "cs:contents"
      ObjectReference {
        SelfId: 15032409003927280482
      }
    }
    Overrides {
      Name: "cs:look_at"
      ObjectReference {
        SelfId: 13698632492225599710
      }
    }
    Overrides {
      Name: "cs:normal_color"
      Color {
        A: 1
      }
    }
    Overrides {
      Name: "cs:hover_color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:normal_text_color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "cs:hover_text_color"
      Color {
        A: 1
      }
    }
    Overrides {
      Name: "cs:final_time"
      ObjectReference {
        SelfId: 3619365820644346555
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
  Script {
    ScriptAsset {
      Id: 7787791980793544365
    }
  }
}
Objects {
  Id: 1877532149501611667
  Name: "Quest_Chamber_Client"
  Transform {
    Location {
      X: -4791.16846
      Y: -5503.01465
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:cave_trigger"
      ObjectReference {
        SelfId: 12040618246545199286
      }
    }
    Overrides {
      Name: "cs:chamber_trigger"
      ObjectReference {
        SelfId: 4085984007303472840
      }
    }
    Overrides {
      Name: "cs:blue_rotator"
      ObjectReference {
        SelfId: 8012908256909681383
        SubObjectId: 1641279718894758573
        InstanceId: 11755248568333856431
        TemplateId: 3679702700024304551
      }
    }
    Overrides {
      Name: "cs:white_rotator"
      ObjectReference {
        SelfId: 3055475381032601107
        SubObjectId: 1641279718894758573
        InstanceId: 18419771671517971870
        TemplateId: 3679702700024304551
      }
    }
    Overrides {
      Name: "cs:yellow_rotator"
      ObjectReference {
        SelfId: 582489672592134053
        SubObjectId: 1641279718894758573
        InstanceId: 4176636789984040048
        TemplateId: 3679702700024304551
      }
    }
    Overrides {
      Name: "cs:red_rotator"
      ObjectReference {
        SelfId: 9067006100597830677
        SubObjectId: 1641279718894758573
        InstanceId: 4010629983080973623
        TemplateId: 3679702700024304551
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:rotator_sound"
      ObjectReference {
        SelfId: 10281062341006278802
      }
    }
    Overrides {
      Name: "cs:success_sound"
      ObjectReference {
        SelfId: 1444449119481677557
      }
    }
    Overrides {
      Name: "cs:red_beam"
      ObjectReference {
        SelfId: 8217725396930601142
      }
    }
    Overrides {
      Name: "cs:white_beam"
      ObjectReference {
        SelfId: 10581975478992684135
      }
    }
    Overrides {
      Name: "cs:yellow_beam"
      ObjectReference {
        SelfId: 8416809099858564236
      }
    }
    Overrides {
      Name: "cs:blue_beam"
      ObjectReference {
        SelfId: 4888308466287386559
      }
    }
    Overrides {
      Name: "cs:mini"
      ObjectReference {
        SelfId: 9886569727362114225
      }
    }
    Overrides {
      Name: "cs:spark_sound"
      ObjectReference {
        SelfId: 9745619904137181038
      }
    }
    Overrides {
      Name: "cs:blue_outline"
      ObjectReference {
        SelfId: 9708753677580275772
      }
    }
    Overrides {
      Name: "cs:white_outline"
      ObjectReference {
        SelfId: 10627906296156234297
      }
    }
    Overrides {
      Name: "cs:yellow_outline"
      ObjectReference {
        SelfId: 14652138206977616986
      }
    }
    Overrides {
      Name: "cs:red_outline"
      ObjectReference {
        SelfId: 367290383231798215
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
  Script {
    ScriptAsset {
      Id: 4391553918667911940
    }
  }
}
Objects {
  Id: 175640858615260086
  Name: "Quest_Catalysts_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:visual_rock_55b"
      ObjectReference {
        SelfId: 13277615482823439019
      }
    }
    Overrides {
      Name: "cs:visual_rock_55a"
      ObjectReference {
        SelfId: 16518421102946950198
      }
    }
    Overrides {
      Name: "cs:red_outline"
      ObjectReference {
        SelfId: 4947993792418632350
      }
    }
    Overrides {
      Name: "cs:yellow_outline"
      ObjectReference {
        SelfId: 18071958956243076656
      }
    }
    Overrides {
      Name: "cs:blue_outline"
      ObjectReference {
        SelfId: 205044014289476236
      }
    }
    Overrides {
      Name: "cs:white_outline"
      ObjectReference {
        SelfId: 12145837874599329578
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
  Script {
    ScriptAsset {
      Id: 16626480252388259615
    }
  }
}
Objects {
  Id: 2196393818071005436
  Name: "Quest_Tree_Area_Found_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 7316799702262892750
      }
    }
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 8102391460791805462
      }
    }
    Overrides {
      Name: "cs:impact"
      ObjectReference {
        SelfId: 13883767580046498163
      }
    }
    Overrides {
      Name: "cs:rocks"
      ObjectReference {
        SelfId: 10287919875482060065
      }
    }
    Overrides {
      Name: "cs:dust"
      ObjectReference {
        SelfId: 357242463879959137
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
  Script {
    ScriptAsset {
      Id: 2867418664345692346
    }
  }
}
Objects {
  Id: 3309564819312204076
  Name: "Quest_Excavation_Site_Found_Client"
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
  ParentId: 12281289070681835054
  UnregisteredParameters {
    Overrides {
      Name: "cs:trigger"
      ObjectReference {
        SelfId: 17641711033790984854
      }
    }
    Overrides {
      Name: "cs:quest_trigger"
      ObjectReference {
        SelfId: 13959005270884086005
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
  Script {
    ScriptAsset {
      Id: 6513752999457813315
    }
  }
}
