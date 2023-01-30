//
//  File.swift
//
//
//  Created by Jangir, Ganesh on 1/26/23.
//

import ClientRuntime
import AwsCommonRuntimeKit

public struct AWSMessageSigner: MessageSigner {
    public init() {}

    public func signEmpty() throws -> ClientRuntime.Message {
        fatalError()
    }

    public func sign(message: ClientRuntime.SignableMessage) throws -> ClientRuntime.Message {
        fatalError()
    }
}
