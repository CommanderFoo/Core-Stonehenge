Name: "Scripts"
RootId: 1636163160051171366
Objects {
  Id: 6791516816529527173
  Name: "Quest Scripts"
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
    FilePartitionName: "Quest Scripts"
  }
}
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
  ChildIds: 17645753054259915518
  ChildIds: 5347877517916026926
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
  Id: 5347877517916026926
  Name: "Collectables_Server"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 4479593274906937095
    }
  }
}
Objects {
  Id: 17645753054259915518
  Name: "Character_Thoughts_Server"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 803564226933659270
    }
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
  UnregisteredParameters {
    Overrides {
      Name: "cs:spawn_point"
      ObjectReference {
        SelfId: 16813558807825262224
      }
    }
    Overrides {
      Name: "cs:spawn_pos"
      Vector {
        X: 7553.3208
        Y: -2377.02344
        Z: 250.106232
      }
    }
    Overrides {
      Name: "cs:spawn_rot"
      Vector {
      }
    }
    Overrides {
      Name: "cs:move_spawn"
      Bool: true
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
  ChildIds: 1654015060712776403
  ChildIds: 17390153026596301370
  ChildIds: 4042031689843970374
  ChildIds: 1134763625187610630
  ChildIds: 7873356878715661556
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
  Id: 7873356878715661556
  Name: "Ocular_Device_Client"
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
      Name: "cs:key"
      String: "r"
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:ui_icon"
      ObjectReference {
        SelfId: 2710473637831060469
        SubObjectId: 3707761901807326545
        InstanceId: 12612610737163539623
        TemplateId: 16712513435738967268
      }
    }
    Overrides {
      Name: "cs:pulse"
      ObjectReference {
        SelfId: 4960270495175141519
      }
    }
    Overrides {
      Name: "cs:rock_symbols"
      ObjectReference {
        SelfId: 5427305723747309504
      }
    }
    Overrides {
      Name: "cs:cooldown_ui"
      ObjectReference {
        SelfId: 17793329956414984492
        SubObjectId: 16143029675258965896
        InstanceId: 12612610737163539623
        TemplateId: 16712513435738967268
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
      Id: 16917844430360128832
    }
  }
}
Objects {
  Id: 1134763625187610630
  Name: "Collectables_Client"
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
      Name: "cs:collectables"
      ObjectReference {
        SelfId: 12880808633388443842
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:key"
      String: "g"
    }
    Overrides {
      Name: "cs:items"
      ObjectReference {
        SelfId: 17030958101355480687
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
      Id: 15989810206148254743
    }
  }
}
Objects {
  Id: 4042031689843970374
  Name: "Character_Thoughts_Client"
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
      Name: "cs:bubble_1"
      ObjectReference {
        SelfId: 14646185269157999619
      }
    }
    Overrides {
      Name: "cs:bubble_2"
      ObjectReference {
        SelfId: 10011664948261367810
      }
    }
    Overrides {
      Name: "cs:bubble_3"
      ObjectReference {
        SelfId: 12026465710188293109
      }
    }
    Overrides {
      Name: "cs:text"
      ObjectReference {
        SelfId: 13703844660524301647
      }
    }
    Overrides {
      Name: "cs:in_time"
      Float: 0.5
    }
    Overrides {
      Name: "cs:stay_time"
      Float: 10
    }
    Overrides {
      Name: "cs:out_time"
      Float: 0.5
    }
    Overrides {
      Name: "cs:thoughts"
      ObjectReference {
        SelfId: 3531142988586757998
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
      Id: 11161198488565903587
    }
  }
}
Objects {
  Id: 17390153026596301370
  Name: "Pointer_Client"
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
      Name: "cs:cursor_ui"
      ObjectReference {
        SelfId: 16074639967968450711
      }
    }
    Overrides {
      Name: "cs:reticle_ui"
      ObjectReference {
        SelfId: 59690698900990467
      }
    }
    Overrides {
      Name: "cs:look"
      AssetReference {
        Id: 17409003921622131677
      }
    }
    Overrides {
      Name: "cs:pickup"
      AssetReference {
        Id: 11070061874830331890
      }
    }
    Overrides {
      Name: "cs:default"
      AssetReference {
        Id: 14730016063174144111
      }
    }
    Overrides {
      Name: "cs:combine"
      AssetReference {
        Id: 4408248990867641932
      }
    }
    Overrides {
      Name: "cs:reticle_default_size"
      Vector2 {
        X: 12
        Y: 12
      }
    }
    Overrides {
      Name: "cs:cursor_default_size"
      Vector2 {
        X: 20
        Y: 20
      }
    }
    Overrides {
      Name: "cs:reticle_big_size"
      Vector2 {
        X: 70
        Y: 70
      }
    }
    Overrides {
      Name: "cs:cursor_big_size"
      Vector2 {
        X: 60
        Y: 60
      }
    }
    Overrides {
      Name: "cs:inventory_cursor"
      ObjectReference {
        SelfId: 10320949908323721065
      }
    }
    Overrides {
      Name: "cs:cursor_big_use"
      Vector2 {
        X: 100
        Y: 100
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
      Id: 3878207078180523128
    }
  }
}
Objects {
  Id: 1654015060712776403
  Name: "Letter_Client"
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
      Name: "cs:letter_container"
      ObjectReference {
        SelfId: 14922594782307179426
      }
    }
    Overrides {
      Name: "cs:lid"
      ObjectReference {
        SelfId: 17149079169545624155
      }
    }
    Overrides {
      Name: "cs:seal"
      ObjectReference {
        SelfId: 6702977518861662880
      }
    }
    Overrides {
      Name: "cs:letter"
      ObjectReference {
        SelfId: 11874334747391800717
      }
    }
    Overrides {
      Name: "cs:button"
      ObjectReference {
        SelfId: 8193909688984415477
      }
    }
    Overrides {
      Name: "cs:front"
      ObjectReference {
        SelfId: 10501625170870324669
      }
    }
    Overrides {
      Name: "cs:close_button"
      ObjectReference {
        SelfId: 10432539958817231375
      }
    }
    Overrides {
      Name: "cs:close_bg"
      ObjectReference {
        SelfId: 14561649432826111640
      }
    }
    Overrides {
      Name: "cs:close_x"
      ObjectReference {
        SelfId: 17065667157771370052
      }
    }
    Overrides {
      Name: "cs:location"
      ObjectReference {
        SelfId: 1156943006971659154
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
      Id: 6420445481963981208
    }
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
    Overrides {
      Name: "cs:in_time"
      Float: 0.5
    }
    Overrides {
      Name: "cs:stay_time"
      Float: 6
    }
    Overrides {
      Name: "cs:out_time"
      Float: 0.5
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:lookup"
      ObjectReference {
        SelfId: 17488655066859996786
      }
    }
    Overrides {
      Name: "cs:slots"
      ObjectReference {
        SelfId: 424584652366831368
      }
    }
    Overrides {
      Name: "cs:key_binding"
      String: "e"
    }
    Overrides {
      Name: "cs:inventory_ui"
      ObjectReference {
        SelfId: 2327109826205371697
      }
    }
    Overrides {
      Name: "cs:hover_color"
      Color {
        R: 0.109375156
        G: 0.109375156
        B: 0.109375156
        A: 0.3
      }
    }
    Overrides {
      Name: "cs:unhover_color"
      Color {
        A: 0.3
      }
    }
    Overrides {
      Name: "cs:active_color"
      Color {
        R: 0.109375156
        G: 0.109375156
        B: 0.109375156
        A: 0.3
      }
    }
    Overrides {
      Name: "cs:look_helper"
      ObjectReference {
        SelfId: 5507221062264159847
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
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
    Overrides {
      Name: "cs:spawned_objects"
      ObjectReference {
        SelfId: 17291568425683070553
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
      }
    }
    Overrides {
      Name: "cs:object_look_offset"
      Float: 140
    }
    Overrides {
      Name: "cs:put_down_text"
      ObjectReference {
        SelfId: 18054116493108083243
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
      Id: 9005596899860770616
    }
  }
}
Objects {
  Id: 14207237045317547549
  Name: "Raycast_Client"
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
      Name: "cs:distance"
      Float: 500
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
    Overrides {
      Name: "cs:ocular_device"
      ObjectReference {
        SelfId: 15264119490670403032
        SubObjectId: 14212269066307920764
        InstanceId: 12612610737163539623
        TemplateId: 16712513435738967268
      }
    }
    Overrides {
      Name: "cs:ocular_device_icon"
      AssetReference {
        Id: 17404098457123408068
      }
    }
    Overrides {
      Name: "cs:YOOTIL"
      AssetReference {
        Id: 16622261663679835299
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
  UnregisteredParameters {
    Overrides {
      Name: "cs:default_camera"
      ObjectReference {
        SelfId: 8479646325199133209
        SubObjectId: 503681998163126313
        InstanceId: 1023850042715320700
        TemplateId: 5189858054097932166
      }
    }
    Overrides {
      Name: "cs:inspection_camera"
      ObjectReference {
        SelfId: 14572394429066107306
      }
    }
    Overrides {
      Name: "cs:tent_camera"
      ObjectReference {
        SelfId: 841534158063459245
      }
    }
    Overrides {
      Name: "cs:spawn_point"
      ObjectReference {
        SelfId: 16813558807825262224
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
      Float: 1.5
    }
    Overrides {
      Name: "cs:debug"
      Bool: true
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
    Overrides {
      Name: "cs:rocks_dry"
      ObjectReference {
        SelfId: 121114553617679531
      }
    }
    Overrides {
      Name: "cs:rocks_wet"
      ObjectReference {
        SelfId: 4140940305163899051
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
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Script {
    ScriptAsset {
      Id: 16641764659941222185
    }
  }
}
