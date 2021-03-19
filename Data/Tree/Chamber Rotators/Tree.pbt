Name: "Chamber Rotators"
RootId: 13115652778135981047
Objects {
  Id: 5402142256756570582
  Name: "Rotators"
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
  ParentId: 13115652778135981047
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "Rotators"
  }
}
Objects {
  Id: 16707183771860033047
  Name: "Rotators"
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
  ParentId: 13115652778135981047
  ChildIds: 1996233857515931477
  ChildIds: 12917990696657955251
  ChildIds: 7812378467271939242
  ChildIds: 3969289712175299732
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
  Id: 3969289712175299732
  Name: "Red"
  Transform {
    Location {
      X: -507.927734
      Y: 310.718079
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 3976429479011223857
  ChildIds: 13319267358613594869
  ChildIds: 1316097554430157904
  ChildIds: 367290383231798215
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
    IsGroup: true
  }
}
Objects {
  Id: 367290383231798215
  Name: "Outline Object"
  Transform {
    Location {
      X: 5509.95654
      Y: 2563.33179
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.336666584
        G: 1.80602029e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Dynamic Thickness"
      Bool: false
    }
    Overrides {
      Name: "bp:Outline Channel"
      Int: 1
    }
    Overrides {
      Name: "bp:Max Distance Thickness"
      Float: 2.32934117
    }
    Overrides {
      Name: "bp:Max Distance"
      Float: 16.9642715
    }
    Overrides {
      Name: "bp:Min Distance"
      Float: 5.9683795
    }
    Overrides {
      Name: "bp:Show Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Solid Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Multi-Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Enabled"
      Bool: true
    }
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 1316097554430157904
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
      Id: 16347485244050219597
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 1316097554430157904
  Name: "Center"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.729577839
    }
  }
  ParentId: 3969289712175299732
  ChildIds: 15618718799809674262
  ChildIds: 2455933758595119942
  ChildIds: 11582139212063243199
  ChildIds: 13977403838732178801
  ChildIds: 3503696986438710167
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15417241749641278998
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 3503696986438710167
  Name: "Yellow"
  Transform {
    Location {
      X: -25.5967045
      Y: -37.8045082
      Z: -2.27633905
    }
    Rotation {
      Pitch: -89.2166443
      Yaw: 142.501022
      Roll: 89.9985
    }
    Scale {
      X: 0.0997324064
      Y: 0.0997324064
      Z: 0.296164721
    }
  }
  ParentId: 1316097554430157904
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 6
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 13977403838732178801
  Name: "Blue"
  Transform {
    Location {
      X: -43.7647896
      Y: 22.476202
      Z: -3.65803766
    }
    Rotation {
      Pitch: 7.51779079
      Yaw: 45.1571
      Roll: 89.8211441
    }
    Scale {
      X: 0.0855327323
      Y: 0.0855327323
      Z: 0.253997445
    }
  }
  ParentId: 1316097554430157904
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 5
    }
    Overrides {
      Name: "bp:Color"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 11582139212063243199
  Name: "Red"
  Transform {
    Location {
      X: 46.5084114
      Y: -27.6973896
      Z: 5.6144681
    }
    Rotation {
      Pitch: -7.29916382
      Yaw: 69.1447372
      Roll: 119.312988
    }
    Scale {
      X: 0.0912201703
      Y: 0.086877577
      Z: 0.564237595
    }
  }
  ParentId: 1316097554430157904
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 10219461876013736783
    SubobjectId: 5605717100043042400
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2455933758595119942
  Name: "Red"
  Transform {
    Location {
      X: 50.3760834
      Y: -24.8505
      Z: -5.40866899
    }
    Rotation {
      Pitch: 2.53924561
      Yaw: -109.417603
      Roll: -61.5438843
    }
    Scale {
      X: 0.0936536565
      Y: 0.0994998887
      Z: 0.284366935
    }
  }
  ParentId: 1316097554430157904
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 8793089991461583791
    SubobjectId: 13411161879335396992
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 15618718799809674262
  Name: "White"
  Transform {
    Location {
      X: 23.3898602
      Y: 45.8445892
      Z: -4.93131542
    }
    Rotation {
      Pitch: -1.32452393
      Yaw: -25.4171753
      Roll: -88.3552246
    }
    Scale {
      X: 0.16678375
      Y: 0.120658435
      Z: 0.408644706
    }
  }
  ParentId: 1316097554430157904
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 12
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
      Name: "bp:Color Emissive"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 15140523901020957083
    SubobjectId: 18103170124130371404
    InstanceId: 930889249625379605
    TemplateId: 11165367308870562928
    WasRoot: true
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 13319267358613594869
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813614
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 3976429479011223857
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.81366
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 3969289712175299732
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 7812378467271939242
  Name: "Yellow"
  Transform {
    Location {
      X: 511.853027
      Y: -312.714905
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 17363893734076196726
  ChildIds: 2269875955449447161
  ChildIds: 10666332874225155054
  ChildIds: 14652138206977616986
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
    IsGroup: true
  }
}
Objects {
  Id: 14652138206977616986
  Name: "Outline Object"
  Transform {
    Location {
      X: 4490.17578
      Y: 3186.76489
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 0.968763649
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Dynamic Thickness"
      Bool: false
    }
    Overrides {
      Name: "bp:Outline Channel"
      Int: 1
    }
    Overrides {
      Name: "bp:Max Distance Thickness"
      Float: 2.32934117
    }
    Overrides {
      Name: "bp:Max Distance"
      Float: 16.9642715
    }
    Overrides {
      Name: "bp:Min Distance"
      Float: 5.9683795
    }
    Overrides {
      Name: "bp:Show Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Solid Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Multi-Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Enabled"
      Bool: true
    }
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 10666332874225155054
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
      Id: 16347485244050219597
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 10666332874225155054
  Name: "Center"
  Transform {
    Location {
    }
    Rotation {
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.729577839
    }
  }
  ParentId: 7812378467271939242
  ChildIds: 9444214760526432178
  ChildIds: 11240888197740524759
  ChildIds: 17196999901389321744
  ChildIds: 7921842407711984918
  ChildIds: 16485399690676577373
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15417241749641278998
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 16485399690676577373
  Name: "Yellow"
  Transform {
    Location {
      X: -25.5967045
      Y: -37.8045082
      Z: -2.27633905
    }
    Rotation {
      Pitch: -89.2166443
      Yaw: 142.501022
      Roll: 89.9985
    }
    Scale {
      X: 0.0997324064
      Y: 0.0997324064
      Z: 0.296164721
    }
  }
  ParentId: 10666332874225155054
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 6
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 7921842407711984918
  Name: "Blue"
  Transform {
    Location {
      X: -43.7647896
      Y: 22.476202
      Z: -3.65803766
    }
    Rotation {
      Pitch: 7.51779079
      Yaw: 45.1571
      Roll: 89.8211441
    }
    Scale {
      X: 0.0855327323
      Y: 0.0855327323
      Z: 0.253997445
    }
  }
  ParentId: 10666332874225155054
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 5
    }
    Overrides {
      Name: "bp:Color"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 17196999901389321744
  Name: "Red"
  Transform {
    Location {
      X: 46.5084114
      Y: -27.6973896
      Z: 5.6144681
    }
    Rotation {
      Pitch: -7.29916382
      Yaw: 69.1447372
      Roll: 119.312988
    }
    Scale {
      X: 0.0912201703
      Y: 0.086877577
      Z: 0.564237595
    }
  }
  ParentId: 10666332874225155054
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 10219461876013736783
    SubobjectId: 5605717100043042400
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 11240888197740524759
  Name: "Red"
  Transform {
    Location {
      X: 50.3760834
      Y: -24.8505
      Z: -5.40866899
    }
    Rotation {
      Pitch: 2.53924561
      Yaw: -109.417603
      Roll: -61.5438843
    }
    Scale {
      X: 0.0936536565
      Y: 0.0994998887
      Z: 0.284366935
    }
  }
  ParentId: 10666332874225155054
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 8793089991461583791
    SubobjectId: 13411161879335396992
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 9444214760526432178
  Name: "White"
  Transform {
    Location {
      X: 23.3898602
      Y: 45.8445892
      Z: -4.93131542
    }
    Rotation {
      Pitch: -1.32452393
      Yaw: -25.4171753
      Roll: -88.3552246
    }
    Scale {
      X: 0.16678375
      Y: 0.120658435
      Z: 0.408644706
    }
  }
  ParentId: 10666332874225155054
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 12
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
      Name: "bp:Color Emissive"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 15140523901020957083
    SubobjectId: 18103170124130371404
    InstanceId: 930889249625379605
    TemplateId: 11165367308870562928
    WasRoot: true
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 2269875955449447161
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.81356
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 17363893734076196726
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813599
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 7812378467271939242
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 12917990696657955251
  Name: "White"
  Transform {
    Location {
      X: 298.651367
      Y: 513.610291
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 16330345981550338515
  ChildIds: 11259834771029286710
  ChildIds: 2876256248829041466
  ChildIds: 10627906296156234297
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
    IsGroup: true
  }
}
Objects {
  Id: 10627906296156234297
  Name: "Outline Object"
  Transform {
    Location {
      X: 4703.37744
      Y: 2360.4397
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Dynamic Thickness"
      Bool: false
    }
    Overrides {
      Name: "bp:Outline Channel"
      Int: 1
    }
    Overrides {
      Name: "bp:Max Distance Thickness"
      Float: 2.32934117
    }
    Overrides {
      Name: "bp:Max Distance"
      Float: 16.9642715
    }
    Overrides {
      Name: "bp:Min Distance"
      Float: 5.9683795
    }
    Overrides {
      Name: "bp:Show Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Solid Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Multi-Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Enabled"
      Bool: true
    }
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 16330345981550338515
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
      Id: 16347485244050219597
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 2876256248829041466
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813545
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 11259834771029286710
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813515
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 12917990696657955251
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 16330345981550338515
  Name: "Center"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 90
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.729577839
    }
  }
  ParentId: 12917990696657955251
  ChildIds: 14879584343444600291
  ChildIds: 18268328060951606872
  ChildIds: 16170990955646065406
  ChildIds: 4880250698089301407
  ChildIds: 7536644715319606684
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15417241749641278998
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 7536644715319606684
  Name: "Yellow"
  Transform {
    Location {
      X: -25.5967045
      Y: -37.8045082
      Z: -2.27633905
    }
    Rotation {
      Pitch: -89.2166443
      Yaw: 142.501022
      Roll: 89.9985
    }
    Scale {
      X: 0.0997324064
      Y: 0.0997324064
      Z: 0.296164721
    }
  }
  ParentId: 16330345981550338515
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 6
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 4880250698089301407
  Name: "Blue"
  Transform {
    Location {
      X: -43.7647896
      Y: 22.476202
      Z: -3.65803766
    }
    Rotation {
      Pitch: 7.51779079
      Yaw: 45.1571
      Roll: 89.8211441
    }
    Scale {
      X: 0.0855327323
      Y: 0.0855327323
      Z: 0.253997445
    }
  }
  ParentId: 16330345981550338515
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 5
    }
    Overrides {
      Name: "bp:Color"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 16170990955646065406
  Name: "Red"
  Transform {
    Location {
      X: 46.5084114
      Y: -27.6973896
      Z: 5.6144681
    }
    Rotation {
      Pitch: -7.29916382
      Yaw: 69.1447372
      Roll: 119.312988
    }
    Scale {
      X: 0.0912201703
      Y: 0.086877577
      Z: 0.564237595
    }
  }
  ParentId: 16330345981550338515
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 10219461876013736783
    SubobjectId: 5605717100043042400
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18268328060951606872
  Name: "Red"
  Transform {
    Location {
      X: 50.3760834
      Y: -24.8505
      Z: -5.40866899
    }
    Rotation {
      Pitch: 2.53924561
      Yaw: -109.417603
      Roll: -61.5438843
    }
    Scale {
      X: 0.0936536565
      Y: 0.0994998887
      Z: 0.284366935
    }
  }
  ParentId: 16330345981550338515
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 8793089991461583791
    SubobjectId: 13411161879335396992
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 14879584343444600291
  Name: "White"
  Transform {
    Location {
      X: 23.3898602
      Y: 45.8445892
      Z: -4.93131542
    }
    Rotation {
      Pitch: -1.32452393
      Yaw: -25.4171753
      Roll: -88.3552246
    }
    Scale {
      X: 0.16678375
      Y: 0.120658435
      Z: 0.408644706
    }
  }
  ParentId: 16330345981550338515
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 12
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
      Name: "bp:Color Emissive"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 15140523901020957083
    SubobjectId: 18103170124130371404
    InstanceId: 930889249625379605
    TemplateId: 11165367308870562928
    WasRoot: true
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 1996233857515931477
  Name: "Blue"
  Transform {
    Location {
      X: -302.577637
      Y: -511.613434
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 16707183771860033047
  ChildIds: 6127157498587267468
  ChildIds: 18422124027195523926
  ChildIds: 3406590393990027585
  ChildIds: 9708753677580275772
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
    IsGroup: true
  }
}
Objects {
  Id: 9708753677580275772
  Name: "Outline Object"
  Transform {
    Location {
      X: 5304.60645
      Y: 3385.66309
      Z: 1943.45679
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "bp:Hierarchy Discovery Depth"
      Int: 2
    }
    Overrides {
      Name: "bp:Thickness"
      Float: 3
    }
    Overrides {
      Name: "bp:Color A"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Dynamic Thickness"
      Bool: false
    }
    Overrides {
      Name: "bp:Outline Channel"
      Int: 1
    }
    Overrides {
      Name: "bp:Max Distance Thickness"
      Float: 2.32934117
    }
    Overrides {
      Name: "bp:Max Distance"
      Float: 16.9642715
    }
    Overrides {
      Name: "bp:Min Distance"
      Float: 5.9683795
    }
    Overrides {
      Name: "bp:Show Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Solid Behind Objects"
      Bool: false
    }
    Overrides {
      Name: "bp:Multi-Color"
      Bool: false
    }
    Overrides {
      Name: "bp:Enabled"
      Bool: true
    }
    Overrides {
      Name: "bp:Object To Outline"
      ObjectReference {
        SelfId: 3406590393990027585
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
      Id: 16347485244050219597
    }
    TeamSettings {
    }
  }
}
Objects {
  Id: 3406590393990027585
  Name: "Center"
  Transform {
    Location {
    }
    Rotation {
      Yaw: 180
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.729577839
    }
  }
  ParentId: 1996233857515931477
  ChildIds: 10050806232416618805
  ChildIds: 10629031100866574518
  ChildIds: 1024906600534124608
  ChildIds: 9889648331152006198
  ChildIds: 9863431660548930680
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 15417241749641278998
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:smart"
      Bool: true
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:utile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:vtile"
      Float: 1
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
  }
  Collidable_v2 {
    Value: "mc:ecollisionsetting:forceoff"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:forceoff"
  }
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 9863431660548930680
  Name: "Yellow"
  Transform {
    Location {
      X: -25.5967045
      Y: -37.8045082
      Z: -2.27633905
    }
    Rotation {
      Pitch: -89.2166443
      Yaw: 142.501022
      Roll: 89.9985
    }
    Scale {
      X: 0.0997324064
      Y: 0.0997324064
      Z: 0.296164721
    }
  }
  ParentId: 3406590393990027585
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 6
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.968763709
        G: 1
        B: 0.0566666126
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 9889648331152006198
  Name: "Blue"
  Transform {
    Location {
      X: -43.7647896
      Y: 22.476202
      Z: -3.65803766
    }
    Rotation {
      Pitch: 7.51779079
      Yaw: 45.1571
      Roll: 89.8211441
    }
    Scale {
      X: 0.0855327323
      Y: 0.0855327323
      Z: 0.253997445
    }
  }
  ParentId: 3406590393990027585
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 5
    }
    Overrides {
      Name: "bp:Color"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        G: 0.12039718
        B: 0.336666584
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  Relevance {
    Value: "mc:eproxyrelevance:medium"
  }
}
Objects {
  Id: 1024906600534124608
  Name: "Red"
  Transform {
    Location {
      X: 46.5084114
      Y: -27.6973896
      Z: 5.6144681
    }
    Rotation {
      Pitch: -7.29916382
      Yaw: 69.1447372
      Roll: 119.312988
    }
    Scale {
      X: 0.0912201703
      Y: 0.086877577
      Z: 0.564237595
    }
  }
  ParentId: 3406590393990027585
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 10219461876013736783
    SubobjectId: 5605717100043042400
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10629031100866574518
  Name: "Red"
  Transform {
    Location {
      X: 50.3760834
      Y: -24.8505
      Z: -5.40866899
    }
    Rotation {
      Pitch: 2.53924561
      Yaw: -109.417603
      Roll: -61.5438843
    }
    Scale {
      X: 0.0936536565
      Y: 0.0994998887
      Z: 0.284366935
    }
  }
  ParentId: 3406590393990027585
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 7
    }
    Overrides {
      Name: "bp:Color"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Color Emissive"
      Color {
        R: 0.336666584
        G: 1.60535137e-07
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 8793089991461583791
    SubobjectId: 13411161879335396992
    InstanceId: 16724078938419712110
    TemplateId: 4420726993591216380
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 10050806232416618805
  Name: "White"
  Transform {
    Location {
      X: 23.3898602
      Y: 45.8445892
      Z: -4.93131542
    }
    Rotation {
      Pitch: -1.32452393
      Yaw: -25.4171753
      Roll: -88.3552246
    }
    Scale {
      X: 0.16678375
      Y: 0.120658435
      Z: 0.408644706
    }
  }
  ParentId: 3406590393990027585
  UnregisteredParameters {
    Overrides {
      Name: "bp:Shape Index"
      Int: 12
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
      Name: "bp:Color Emissive"
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
    }
    Overrides {
      Name: "bp:Emissive Boost"
      Float: 0
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
      Id: 11171792275709422916
    }
    TeamSettings {
    }
    DecalBP {
    }
  }
  InstanceHistory {
    SelfId: 15140523901020957083
    SubobjectId: 18103170124130371404
    InstanceId: 930889249625379605
    TemplateId: 11165367308870562928
    WasRoot: true
  }
  Relevance {
    Value: "mc:eproxyrelevance:critical"
  }
}
Objects {
  Id: 18422124027195523926
  Name: "Edge"
  Transform {
    Location {
      Z: 35.2839355
    }
    Rotation {
      Yaw: 103.813675
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
Objects {
  Id: 6127157498587267468
  Name: "Edge"
  Transform {
    Location {
      Z: -35.6203613
    }
    Rotation {
      Yaw: 103.813713
    }
    Scale {
      X: 2.16654968
      Y: 2.16654968
      Z: 0.109192066
    }
  }
  ParentId: 1996233857515931477
  UnregisteredParameters {
    Overrides {
      Name: "ma:Shared_BaseMaterial:id"
      AssetReference {
        Id: 10383940092005252910
      }
    }
    Overrides {
      Name: "ma:Shared_BaseMaterial:color"
      Color {
        R: 0.267062426
        G: 0.334375054
        B: 0.327041775
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
  CoreMesh {
    MeshAsset {
      Id: 10831211583006885035
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    StaticMesh {
      Physics {
        Mass: 100
        LinearDamping: 0.01
      }
    }
  }
}
