import Differentiation

struct Tensor: Differentiable & AdditiveArithmetic {
  typealias TangentVector = Self
  
  static func == (lhs: Self, rhs: Self) {
    fatalError()
  }
  
  static func + (lhs: Self, rhs: Self) {
    fatalError()
  }
}

@differentiable(reverse)
func Tensor_stack(_ lhs: Tensor) -> Tensor {
  var stack = Array<Tensor>()
  stack.append(lhs)
  return Tensor_init(stacking: stack)
}

@differentiable(reverse)
func Tensor_init(stacking tensors: [Tensor]) -> Tensor {
  fatalError()
}

@derivative(of: Tensor_init(stacking:))
func _vjpStacking(
  stacking tensors: [Tensor]
) -> (value: Tensor, pullback: (Tensor) -> Array<Tensor>.TangentVector) {
  fatalError()
}



//@inlinable
//@inline(__always)
//@_semantics("autodiff.nonvarying")
//public func withoutDerivative<T>(at x: T) -> T {
//  x
//}
