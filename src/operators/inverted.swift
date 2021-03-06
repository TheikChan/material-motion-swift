/*
 Copyright 2016-present The Material Motion Authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

extension MotionObservableConvertible where T == Bool {

  /**
   Emits the negation of the upstream Boolean value.
   */
  public func inverted() -> MotionObservable<Bool> {
    return _map { value in
      return !value
    }
  }
}

extension MotionObservableConvertible where T: Invertible {

  /**
   Emits the inversion of the upstream value.
   */
  public func inverted() -> MotionObservable<T> {
    return _map { $0.inverted() }
  }
}
