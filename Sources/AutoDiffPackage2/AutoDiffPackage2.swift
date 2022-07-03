import Differentiation

extension Array.DifferentiableView: RandomAccessCollection
where Element: Differentiable {
  // All of these properties must be public.
  public typealias Element = Array<Element>.Element
  public typealias Index = Array<Element>.Index
  public typealias SubSequence = Array<Element>.SubSequence

  public subscript(position: Array<Element>.Index) -> Element {
    get { fatalError() }
    set { fatalError() }
  }

  public subscript(bounds: Range<Array<Element>.Index>) -> SubSequence {
    get { fatalError() }
    set { fatalError() }
  }

  public var startIndex: Index { fatalError() }
  public var endIndex: Index { fatalError() }
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
func Tensor_init(stacking tensors: [Tensor]) -> Tensor {
  fatalError()
}

@derivative(of: Tensor_init(stacking:))
func _vjpStacking(
  stacking tensors: [Tensor]
) -> (value: Tensor, pullback: (Tensor) -> Array<Tensor>.TangentVector) {
  fatalError()
}
