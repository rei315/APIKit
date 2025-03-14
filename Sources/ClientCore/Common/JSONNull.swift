//
//  JSONNull.swift
//
//
//  Created by minguk-kim on 2023/05/04.
//

import Foundation

public final class JSONNull: Codable, Hashable, Sendable {
  public static func == (_: JSONNull, _: JSONNull) -> Bool {
    true
  }
  
  public func hash(into hasher: inout Hasher) {
    hasher.combine(0)
  }
  
  public init() {}
  
  public required init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if !container.decodeNil() {
      throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
    }
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encodeNil()
  }
}
