import _Differentiation

extension Array: Differentiable where Element: Differentiable {
  public mutating func move(by offset: TangentVector) {
    fatalError()
  }
}

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
  Tensor_init(stacking: [lhs])
}

@differentiable(reverse)
func Tensor_init(stacking tensors: Array<Tensor>) -> Tensor {
  fatalError()
}

@derivative(of: Tensor_init(stacking:))
func _vjpStacking(
  stacking tensors: Array<Tensor>
) -> (value: Tensor, pullback: (Tensor) -> Array<Tensor>.TangentVector) {
  fatalError()
}
