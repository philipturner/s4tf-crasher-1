// Import not used in this file.
import _Differentiation

fileprivate struct Array_DifferentiableView<Element> {}

extension Array_DifferentiableView: AdditiveArithmetic {
  fileprivate static func + (lhs: Self, rhs: Self) -> Self { fatalError() }
  private static func - (lhs: Self, rhs: Self) -> Self { fatalError() }
}
