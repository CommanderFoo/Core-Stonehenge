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
  ChildIds: 14348710363904795712
  ChildIds: 4100779181729332834
  ChildIds: 6380753851518955502
  ChildIds: 16900010184290640698
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
  Id: 16900010184290640698
  Name: "Player_Server"
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
      Id: 9136894214218418066
    }
  }
}
Objects {
  Id: 6380753851518955502
  Name: "Inventory_Server"
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
  UnregisteredParameters {
    Overrides {
      Name: "cs:lookup"
      ObjectReference {
        SelfId: 17488655066859996786
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
      Id: 8637592817044267496
    }
  }
}
Objects {
  Id: 4100779181729332834
  Name: "Interaction_Inspector_Server"
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
  UnregisteredParameters {
    Overrides {
      Name: "cs:interactables"
      ObjectReference {
        SelfId: 13207548860357947295
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
      Id: 16636176596742416215
    }
  }
}
Objects {
  Id: 14348710363904795712
  Name: "Object_Inspector_Server"
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
      Id: 12577538547396390703
    }
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
  ChildIds: 3060149095482998545
  ChildIds: 14207237045317547549
  ChildIds: 4875479315074189847
  ChildIds: 12574640119200630924
  ChildIds: 5161737726342901287
  ChildIds: 3918715364034492105
  ChildIds: 6144095686271325409
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
  Id: 6144095686271325409
  Name: "Notifications_Client"
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
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:notification"
      ObjectReference {
        SelfId: 8705112589880056221
      }
    }
    Overrides {
      Name: "cs:background"
      ObjectReference {
        SelfId: 11491370129659431548
      }
    }
    Overrides {
      Name: "cs:text"
      ObjectReference {
        SelfId: 2694120064592384546
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
      Id: 11438460264907104405
    }
  }
}
Objects {
  Id: 3918715364034492105
  Name: "Quest_Manager_Client"
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
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:quest_holder"
      AssetReference {
        Id: 8028526601050382838
      }
    }
    Overrides {
      Name: "cs:quest_item"
      AssetReference {
        Id: 18263410488187278100
      }
    }
    Overrides {
      Name: "cs:quest_data"
      ObjectReference {
        SelfId: 15892015409261034309
      }
    }
    Overrides {
      Name: "cs:quest_container"
      ObjectReference {
        SelfId: 3139108800441333692
      }
    }
    Overrides {
      Name: "cs:quest_lookup"
      ObjectReference {
        SelfId: 15892015409261034309
      }
    }
    Overrides {
      Name: "cs:quest_item_complete_color"
      Color {
        R: 1
        G: 0.99600023
        A: 1
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
      Id: 2590048331469800252
    }
  }
}
Objects {
  Id: 5161737726342901287
  Name: "Inventory_Client"
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
      Name: "cs:lookup"
      ObjectReference {
        SelfId: 17488655066859996786
      }
    }
    Overrides {
      Name: "cs:items_container"
      ObjectReference {
        SelfId: 424584652366831368
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
      Id: 12499386015335153304
    }
  }
}
Objects {
  Id: 12574640119200630924
  Name: "Interaction_Inspector_Client"
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
      Name: "cs:inspect_cam"
      ObjectReference {
        SelfId: 14572394429066107306
      }
    }
    Overrides {
      Name: "cs:default_cam"
      ObjectReference {
        SelfId: 3840927660290209183
        SubObjectId: 5052201122922792879
        InstanceId: 1023850042715320700
        TemplateId: 5189858054097932166
      }
    }
    Overrides {
      Name: "cs:debug"
      Bool: true
    }
    Overrides {
      Name: "cs:lerp_time"
      Float: 0.2
    }
    Overrides {
      Name: "cs:inspect_ui"
      ObjectReference {
        SelfId: 10400721808396098963
      }
    }
    Overrides {
      Name: "cs:back_button"
      ObjectReference {
        SelfId: 13099482719251150093
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:interactables"
      ObjectReference {
        SelfId: 13207548860357947295
      }
    }
    Overrides {
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 16074639967968450711
      }
    }
    Overrides {
      Name: "cs:glove"
      AssetReference {
        Id: 18264982001259645559
      }
    }
    Overrides {
      Name: "cs:magnify"
      AssetReference {
        Id: 17409003921622131677
      }
    }
    Overrides {
      Name: "cs:back_hover_color"
      Color {
        R: 0.0177083015
        G: 0.0177083015
        B: 0.0177083015
        A: 1
      }
    }
    Overrides {
      Name: "cs:back_unhover_color"
      Color {
        A: 1
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
      Id: 5531262730846410578
    }
  }
}
Objects {
  Id: 4875479315074189847
  Name: "Object_Inspector_Client"
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
      Name: "cs:cursor"
      ObjectReference {
        SelfId: 16074639967968450711
      }
    }
    Overrides {
      Name: "cs:put_down_button"
      ObjectReference {
        SelfId: 8617543916545524678
      }
    }
    Overrides {
      Name: "cs:put_down_hover_color"
      Color {
        R: 0.0177083015
        G: 0.0177083015
        B: 0.0177083015
        A: 1
      }
    }
    Overrides {
      Name: "cs:put_down_unhover_color"
      Color {
        A: 1
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
      Id: 9005596899860770616
    }
  }
}
Objects {
  Id: 14207237045317547549
  Name: "Mouse_Context_Client"
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
      Name: "cs:magnify"
      AssetReference {
        Id: 17409003921622131677
      }
    }
    Overrides {
      Name: "cs:glove"
      AssetReference {
        Id: 18264982001259645559
      }
    }
    Overrides {
      Name: "cs:default"
      AssetReference {
        Id: 14730016063174144111
      }
    }
    Overrides {
      Name: "cs:reticle"
      ObjectReference {
        SelfId: 59690698900990467
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
      Id: 2382159957336445003
    }
  }
}
Objects {
  Id: 3060149095482998545
  Name: "UI_Manager_Client"
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
      Name: "cs:dynamic"
      ObjectReference {
        SelfId: 3139108800441333692
      }
    }
    Overrides {
      Name: "cs:static"
      ObjectReference {
        SelfId: 10400721808396098963
      }
    }
    Overrides {
      Name: "cs:main_menu"
      ObjectReference {
        SelfId: 3730129137196217546
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
      Id: 6559562423505441195
    }
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
    Overrides {
      Name: "cs:transition_time"
      Float: 0.1
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
      }
    }
    Overrides {
      Name: "cs:bluestone_rocks_wet"
      ObjectReference {
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:main_rain_sound"
      ObjectReference {
        SelfId: 17816937463263935439
      }
    }
    Overrides {
      Name: "cs:main_rain_volume"
      ObjectReference {
        SelfId: 7979889722684355965
      }
    }
    Overrides {
      Name: "cs:main_thunder_sound"
      ObjectReference {
        SelfId: 11119204773295177232
      }
    }
    Overrides {
      Name: "cs:main_rain_density"
      Int: 200
    }
    Overrides {
      Name: "cs:profiles"
      ObjectReference {
        SelfId: 17623482558702204384
      }
    }
    Overrides {
      Name: "cs:star_dome"
      ObjectReference {
        SelfId: 12462703319380739545
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
    Overrides {
      Name: "cs:pickup_sound"
      ObjectReference {
        SelfId: 8627870878544148169
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
