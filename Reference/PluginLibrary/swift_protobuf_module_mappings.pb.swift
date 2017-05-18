// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: PluginLibrary/swift_protobuf_module_mappings.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Protos/PluginLibrary/swift_protobuf_module_mappings.proto - Swift Module mappings configuration
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _1: SwiftProtobuf.ProtobufAPIVersion_1 {}
  typealias Version = _1
}

/// Configuration used to define the mappings for generated proto files
/// to the Swift module they will be included in.
struct SwiftProtobuf_GenSwift_ModuleMappings: SwiftProtobuf.Message {
  static let protoMessageName: String = _protobuf_package + ".ModuleMappings"

  /// The mappings.
  var mapping: [SwiftProtobuf_GenSwift_ModuleMappings.Entry] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Individual listing of the module name and the files that will go
  /// into it.
  struct Entry: SwiftProtobuf.Message {
    static let protoMessageName: String = SwiftProtobuf_GenSwift_ModuleMappings.protoMessageName + ".Entry"

    /// The Swift module name that will be imported and used to scope all
    /// the types from the given proto files.
    var moduleName: String = String()

    /// The proto files that should be considered it this module.  The values
    /// should be the how they are expressed to the generated; i.e. - how they
    /// are used in import states to be used from other files, so `my_file.proto`
    /// or `path/to/file.proto`.
    var protoFilePath: [String] = []

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &self.moduleName)
        case 2: try decoder.decodeRepeatedStringField(value: &self.protoFilePath)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.moduleName.isEmpty {
        try visitor.visitSingularStringField(value: self.moduleName, fieldNumber: 1)
      }
      if !self.protoFilePath.isEmpty {
        try visitor.visitRepeatedStringField(value: self.protoFilePath, fieldNumber: 2)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.mapping)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mapping.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.mapping, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_protobuf.gen_swift"

extension SwiftProtobuf_GenSwift_ModuleMappings: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "mapping"),
  ]

  func _protobuf_generated_isEqualTo(other: SwiftProtobuf_GenSwift_ModuleMappings) -> Bool {
    if self.mapping != other.mapping {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension SwiftProtobuf_GenSwift_ModuleMappings.Entry: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "module_name"),
    2: .standard(proto: "proto_file_path"),
  ]

  func _protobuf_generated_isEqualTo(other: SwiftProtobuf_GenSwift_ModuleMappings.Entry) -> Bool {
    if self.moduleName != other.moduleName {return false}
    if self.protoFilePath != other.protoFilePath {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
