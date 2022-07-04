import _Differentiation

extension Array: Differentiable {}

// rm -rf .build
// mkdir .build
// export MY_DIR=$(pwd)
// /Library/Developer/Toolchains/swift-5.7-DEVELOPMENT-SNAPSHOT-2022-06-26-a.xctoolchain/usr/bin/swift-frontend -frontend -emit-module ${MY_DIR}/Sources/_Differentiation/Differentiable.swift -o ${MY_DIR}/.build/_Differentiation.swiftmodule
// /Library/Developer/Toolchains/swift-5.7-DEVELOPMENT-SNAPSHOT-2022-06-26-a.xctoolchain/usr/bin/swift-frontend -frontend -emit-module ${MY_DIR}/Sources/AutoDiffPackage2/AutoDiffPackage2.swift -I ${MY_DIR}/.build



