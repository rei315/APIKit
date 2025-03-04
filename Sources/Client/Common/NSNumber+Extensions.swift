//
//  NSNumber+Extensions.swift
//
//
//  Created by minguk-kim on 2023/05/03.
//

import Foundation

extension NSNumber {
  public var isBool: Bool {
    String(cString: objCType) == "c"
  }
}
