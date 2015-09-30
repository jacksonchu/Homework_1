// base Class
class Stick {
  var width : Int
  var length : Int
  var weight : Int
  var broken = false
  
  init (actualLength: Int, actualWidth: Int, actualWeight: Int) {
    length = actualLength
    width = actualWidth
    weight = actualWeight
  }
}

// subclasses
class BreadStick : Stick {
  var edible = true
  
  func thrownOnTheGround() {
    edible = false
    return print("thrown on the ground!")
  }
    
}

class BroomStick : Stick {
  let material = "bamboo"
  var sweepLength = 10
  var sweepWidth = 20
  var sweepSurfaceArea = 0
  
  func calculateSweepSurfaceArea() -> Int {
    sweepSurfaceArea = sweepLength * sweepWidth
    return sweepSurfaceArea
  }
}

class UsbStick : Stick {
  var storageSize = 32
  
  func calculateNewStorageSizeGivenFileSize(fileSize: Int) -> Int {
    storageSize = storageSize - fileSize
    return storageSize
  }
}

class LacrosseStick : Stick {
  var hasNet = true
  var ballStillInNet = true
  
  func throwABall() -> Bool {
    ballStillInNet = false
    return ballStillInNet
  }
}

class HockeyStick : Stick {
  let baseColor = "Black"
  let shotStrength = 3
  let shotArc = 25
  var shotDistance = 0
  
  func slapShot() -> Int {
    shotDistance = shotStrength * shotDistance
    return shotDistance
  }
}

class CompositeHockeyStick : HockeyStick {
  
  let baselineHeight = 15
  
  func breakAnotherStick(stick: Stick) -> Int {
    let newLength = stick.length / 2
    stick.broken = true
    return newLength
  }
}

let myBroomStick = BroomStick(actualLength: 20, actualWidth: 5, actualWeight: 15)

let myCompositeHockeyStick = CompositeHockeyStick(actualLength: 18, actualWidth: 5, actualWeight: 10)
myCompositeHockeyStick.breakAnotherStick(myBroomStick)




