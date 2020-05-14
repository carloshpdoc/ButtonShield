import QuartzCore

public extension CGSize {
    func rescale(_ scale: CGFloat) -> CGSize {
    return applying(CGAffineTransform(scaleX: scale, y: scale))
  }
}
