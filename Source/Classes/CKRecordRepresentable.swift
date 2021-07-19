//
//  CKRecordRepresentable.swift
//  NestedCloudKitCodable
//
//  Created by Guilherme Girotto on 18/11/18.
//  Copyright © 2018 Guilherme Girotto. All rights reserved.
//

import Foundation
import CloudKit

public protocol CKRecordRepresentable {
    var cloudKitRecordType: String { get }
    var cloudKitIdentifier: String { get }

    func ignoredProperties() -> [String]
    func cloudKitReferenceActions() -> [String: CKRecord.Reference.Action]
}

public extension CKRecordRepresentable {
    func ignoredProperties() -> [String] { return [] }
    func cloudKitReferenceActions() -> [String: CKRecord.Reference.Action] { return [:] }
}

public typealias CKEncodable = CKRecordRepresentable & Encodable
public typealias CKDecodable = CKRecordRepresentable & Decodable
public typealias CKCodable = CKEncodable & CKDecodable
