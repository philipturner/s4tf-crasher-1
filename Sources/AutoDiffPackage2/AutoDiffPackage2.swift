// Import not even used in this file.
import _Differentiation

fileprivate struct Array_DifferentiableView<Element> {}

// Pay attention to this.
extension Array_DifferentiableView: AdditiveArithmetic {
  private static func + (lhs: Self, rhs: Self) -> Self { fatalError() }
  private static func - (lhs: Self, rhs: Self) -> Self { fatalError() }
}
