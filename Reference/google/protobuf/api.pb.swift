/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/api.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation


///   Api is a light-weight descriptor for a protocol buffer service.
public struct Google_Protobuf_Api: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_Api"}
  public var protoMessageName: String {return "Api"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "methods": 2,
    "options": 3,
    "version": 4,
    "sourceContext": 5,
    "mixins": 6,
    "syntax": 7,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "methods": 2,
    "options": 3,
    "version": 4,
    "source_context": 5,
    "mixins": 6,
    "syntax": 7,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = Google_Protobuf_Api
    var _name: String = ""
    var _methods: [Google_Protobuf_Method] = []
    var _options: [Google_Protobuf_Option] = []
    var _version: String = ""
    var _sourceContext: Google_Protobuf_SourceContext? = nil
    var _mixins: [Google_Protobuf_Mixin] = []
    var _syntax: Google_Protobuf_Syntax = Google_Protobuf_Syntax.proto2

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_name)
      case 2: handled = try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Method.self, value: &_methods)
      case 3: handled = try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &_options)
      case 4: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &_version)
      case 5: handled = try setter.decodeSingularMessageField(fieldType: Google_Protobuf_SourceContext.self, value: &_sourceContext)
      case 6: handled = try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Mixin.self, value: &_mixins)
      case 7: handled = try setter.decodeSingularField(fieldType: Google_Protobuf_Syntax.self, value: &_syntax)
      default:
        handled = false
      }
      return handled
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if _name != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
      }
      if !_methods.isEmpty {
        try visitor.visitRepeatedMessageField(value: _methods, protoFieldNumber: 2, protoFieldName: "methods", jsonFieldName: "methods", swiftFieldName: "methods")
      }
      if !_options.isEmpty {
        try visitor.visitRepeatedMessageField(value: _options, protoFieldNumber: 3, protoFieldName: "options", jsonFieldName: "options", swiftFieldName: "options")
      }
      if _version != "" {
        try visitor.visitSingularField(fieldType: ProtobufString.self, value: _version, protoFieldNumber: 4, protoFieldName: "version", jsonFieldName: "version", swiftFieldName: "version")
      }
      if let v = _sourceContext {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 5, protoFieldName: "source_context", jsonFieldName: "sourceContext", swiftFieldName: "sourceContext")
      }
      if !_mixins.isEmpty {
        try visitor.visitRepeatedMessageField(value: _mixins, protoFieldNumber: 6, protoFieldName: "mixins", jsonFieldName: "mixins", swiftFieldName: "mixins")
      }
      if _syntax != Google_Protobuf_Syntax.proto2 {
        try visitor.visitSingularField(fieldType: Google_Protobuf_Syntax.self, value: _syntax, protoFieldNumber: 7, protoFieldName: "syntax", jsonFieldName: "syntax", swiftFieldName: "syntax")
      }
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if _name != other._name {return false}
      if _methods != other._methods {return false}
      if _options != other._options {return false}
      if _version != other._version {return false}
      if _sourceContext != other._sourceContext {return false}
      if _mixins != other._mixins {return false}
      if _syntax != other._syntax {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone._name = _name
      clone._methods = _methods
      clone._options = _options
      clone._version = _version
      clone._sourceContext = _sourceContext
      clone._mixins = _mixins
      clone._syntax = _syntax
      return clone
    }
  }

  private var _storage = _StorageClass()

  ///   The fully qualified name of this api, including package name
  ///   followed by the api's simple name.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  ///   The methods of this api, in unspecified order.
  public var methods: [Google_Protobuf_Method] {
    get {return _storage._methods}
    set {_uniqueStorage()._methods = newValue}
  }

  ///   Any metadata attached to the API.
  public var options: [Google_Protobuf_Option] {
    get {return _storage._options}
    set {_uniqueStorage()._options = newValue}
  }

  ///   A version string for this api. If specified, must have the form
  ///   `major-version.minor-version`, as in `1.10`. If the minor version
  ///   is omitted, it defaults to zero. If the entire version field is
  ///   empty, the major version is derived from the package name, as
  ///   outlined below. If the field is not empty, the version in the
  ///   package name will be verified to be consistent with what is
  ///   provided here.
  ///  
  ///   The versioning schema uses [semantic
  ///   versioning](http://semver.org) where the major version number
  ///   indicates a breaking change and the minor version an additive,
  ///   non-breaking change. Both version numbers are signals to users
  ///   what to expect from different versions, and should be carefully
  ///   chosen based on the product plan.
  ///  
  ///   The major version is also reflected in the package name of the
  ///   API, which must end in `v<major-version>`, as in
  ///   `google.feature.v1`. For major versions 0 and 1, the suffix can
  ///   be omitted. Zero major versions must only be used for
  ///   experimental, none-GA apis.
  public var version: String {
    get {return _storage._version}
    set {_uniqueStorage()._version = newValue}
  }

  ///   Source context for the protocol buffer service represented by this
  ///   message.
  public var sourceContext: Google_Protobuf_SourceContext {
    get {return _storage._sourceContext ?? Google_Protobuf_SourceContext()}
    set {_uniqueStorage()._sourceContext = newValue}
  }
  public var hasSourceContext: Bool {
    return _storage._sourceContext != nil
  }
  public mutating func clearSourceContext() {
    return _storage._sourceContext = nil
  }

  ///   Included APIs. See [Mixin][].
  public var mixins: [Google_Protobuf_Mixin] {
    get {return _storage._mixins}
    set {_uniqueStorage()._mixins = newValue}
  }

  ///   The source syntax of the service.
  public var syntax: Google_Protobuf_Syntax {
    get {return _storage._syntax}
    set {_uniqueStorage()._syntax = newValue}
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Api) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}

///   Method represents a method of an api.
public struct Google_Protobuf_Method: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_Method"}
  public var protoMessageName: String {return "Method"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "requestTypeUrl": 2,
    "requestStreaming": 3,
    "responseTypeUrl": 4,
    "responseStreaming": 5,
    "options": 6,
    "syntax": 7,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "request_type_url": 2,
    "request_streaming": 3,
    "response_type_url": 4,
    "response_streaming": 5,
    "options": 6,
    "syntax": 7,
  ]}

  ///   The simple name of this method.
  public var name: String = ""

  ///   A URL of the input message type.
  public var requestTypeURL: String = ""

  ///   If true, the request is streamed.
  public var requestStreaming: Bool = false

  ///   The URL of the output message type.
  public var responseTypeURL: String = ""

  ///   If true, the response is streamed.
  public var responseStreaming: Bool = false

  ///   Any metadata attached to the method.
  public var options: [Google_Protobuf_Option] = []

  ///   The source syntax of this method.
  public var syntax: Google_Protobuf_Syntax = Google_Protobuf_Syntax.proto2

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &requestTypeURL)
    case 3: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &requestStreaming)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &responseTypeURL)
    case 5: handled = try setter.decodeSingularField(fieldType: ProtobufBool.self, value: &responseStreaming)
    case 6: handled = try setter.decodeRepeatedMessageField(fieldType: Google_Protobuf_Option.self, value: &options)
    case 7: handled = try setter.decodeSingularField(fieldType: Google_Protobuf_Syntax.self, value: &syntax)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if requestTypeURL != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: requestTypeURL, protoFieldNumber: 2, protoFieldName: "request_type_url", jsonFieldName: "requestTypeUrl", swiftFieldName: "requestTypeURL")
    }
    if requestStreaming != false {
      try visitor.visitSingularField(fieldType: ProtobufBool.self, value: requestStreaming, protoFieldNumber: 3, protoFieldName: "request_streaming", jsonFieldName: "requestStreaming", swiftFieldName: "requestStreaming")
    }
    if responseTypeURL != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: responseTypeURL, protoFieldNumber: 4, protoFieldName: "response_type_url", jsonFieldName: "responseTypeUrl", swiftFieldName: "responseTypeURL")
    }
    if responseStreaming != false {
      try visitor.visitSingularField(fieldType: ProtobufBool.self, value: responseStreaming, protoFieldNumber: 5, protoFieldName: "response_streaming", jsonFieldName: "responseStreaming", swiftFieldName: "responseStreaming")
    }
    if !options.isEmpty {
      try visitor.visitRepeatedMessageField(value: options, protoFieldNumber: 6, protoFieldName: "options", jsonFieldName: "options", swiftFieldName: "options")
    }
    if syntax != Google_Protobuf_Syntax.proto2 {
      try visitor.visitSingularField(fieldType: Google_Protobuf_Syntax.self, value: syntax, protoFieldNumber: 7, protoFieldName: "syntax", jsonFieldName: "syntax", swiftFieldName: "syntax")
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Method) -> Bool {
    if name != other.name {return false}
    if requestTypeURL != other.requestTypeURL {return false}
    if requestStreaming != other.requestStreaming {return false}
    if responseTypeURL != other.responseTypeURL {return false}
    if responseStreaming != other.responseStreaming {return false}
    if options != other.options {return false}
    if syntax != other.syntax {return false}
    return true
  }
}

///   Declares an API to be included in this API. The including API must
///   redeclare all the methods from the included API, but documentation
///   and options are inherited as follows:
///  
///   - If after comment and whitespace stripping, the documentation
///     string of the redeclared method is empty, it will be inherited
///     from the original method.
///  
///   - Each annotation belonging to the service config (http,
///     visibility) which is not set in the redeclared method will be
///     inherited.
///  
///   - If an http annotation is inherited, the path pattern will be
///     modified as follows. Any version prefix will be replaced by the
///     version of the including API plus the [root][] path if specified.
///  
///   Example of a simple mixin:
///  
///       package google.acl.v1;
///       service AccessControl {
///         // Get the underlying ACL object.
///         rpc GetAcl(GetAclRequest) returns (Acl) {
///           option (google.api.http).get = "/v1/{resource=**}:getAcl";
///         }
///       }
///  
///       package google.storage.v2;
///       service Storage {
///         rpc GetAcl(GetAclRequest) returns (Acl);
///  
///         // Get a data record.
///         rpc GetData(GetDataRequest) returns (Data) {
///           option (google.api.http).get = "/v2/{resource=**}";
///         }
///       }
///  
///   Example of a mixin configuration:
///  
///       apis:
///       - name: google.storage.v2.Storage
///         mixins:
///         - name: google.acl.v1.AccessControl
///  
///   The mixin construct implies that all methods in `AccessControl` are
///   also declared with same name and request/response types in
///   `Storage`. A documentation generator or annotation processor will
///   see the effective `Storage.GetAcl` method after inherting
///   documentation and annotations as follows:
///  
///       service Storage {
///         // Get the underlying ACL object.
///         rpc GetAcl(GetAclRequest) returns (Acl) {
///           option (google.api.http).get = "/v2/{resource=**}:getAcl";
///         }
///         ...
///       }
///  
///   Note how the version in the path pattern changed from `v1` to `v2`.
///  
///   If the `root` field in the mixin is specified, it should be a
///   relative path under which inherited HTTP paths are placed. Example:
///  
///       apis:
///       - name: google.storage.v2.Storage
///         mixins:
///         - name: google.acl.v1.AccessControl
///           root: acls
///  
///   This implies the following inherited HTTP annotation:
///  
///       service Storage {
///         // Get the underlying ACL object.
///         rpc GetAcl(GetAclRequest) returns (Acl) {
///           option (google.api.http).get = "/v2/acls/{resource=**}:getAcl";
///         }
///         ...
///       }
public struct Google_Protobuf_Mixin: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Google_Protobuf_Mixin"}
  public var protoMessageName: String {return "Mixin"}
  public var protoPackageName: String {return "google.protobuf"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "root": 2,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "root": 2,
  ]}

  ///   The fully qualified name of the API which is included.
  public var name: String = ""

  ///   If non-empty specifies a path under which inherited HTTP paths
  ///   are rooted.
  public var root: String = ""

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &root)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if root != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: root, protoFieldNumber: 2, protoFieldName: "root", jsonFieldName: "root", swiftFieldName: "root")
    }
  }

  public func _protoc_generated_isEqualTo(other: Google_Protobuf_Mixin) -> Bool {
    if name != other.name {return false}
    if root != other.root {return false}
    return true
  }
}
