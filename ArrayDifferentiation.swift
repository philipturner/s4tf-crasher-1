import _Differentiation

extension Array: Differentiable {
  public typealias TangentVector = Self
}

struct Array2<Element>: Differentiable {
  // `arrayLiteral2` must be variadic.
  init(arrayLiteral2 elements: Element...) {
    fatalError()
  }
  typealias TangentVector = Self
}

struct Tensor: Differentiable {
  typealias TangentVector = Self
}

@differentiable(reverse)
func Tensor_stack(_ lhs: Tensor) -> Tensor {
  Tensor_init(stacking: Array2(arrayLiteral2: lhs))
}

func Tensor_init(stacking tensors: Array2<Tensor>) -> Tensor {
  fatalError()
}

@derivative(of: Tensor_init(stacking:))
func _vjpStacking(
  stacking tensors: Array2<Tensor>
) -> (value: Tensor, pullback: (Tensor) -> Array2<Tensor>.TangentVector) {
  fatalError()
}
