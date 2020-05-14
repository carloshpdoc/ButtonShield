import QuartzCore

public extension CGRect {
    init(centre: CGPoint, size: CGSize) {
    self.init(origin: centre.applying(CGAffineTransform(translationX: size.width / -2, y: size.height / -2)), size: size)
  }
  
  var centre: CGPoint {
    return CGPoint(x: midX, y: midY)
  }
  
  var largestContainedSquare: CGRect {
    let side = min(width, height)
    return CGRect(centre: centre, size: CGSize(width: side, height: side))
  }
  
  var smallestContainingSquare: CGRect {
    let side = max(width, height)
    return CGRect(centre: centre, size: CGSize(width: side, height: side))
  }
}
