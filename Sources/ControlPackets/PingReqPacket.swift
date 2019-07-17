//
//  PingReqPacket.swift
//  NIOMQTT
//
//  Created by Bofei Zhu on 6/20/19.
//  Copyright © 2019 HealthTap Inc. All rights reserved.
//

/// The PINGREQ packet is sent from a Client to the Server in Keep Alive processing.
///
/// - Note:
///     It can be used to:
///     * Indicate to the Server that the Client is alive in the absence of any other MQTT Control Packets
///       being sent from the Client to the Server.
///     * Request that the Server responds to confirm that it is alive.
///     * Exercise the network to indicate that the Network Connection is active.
struct PingReqPacket: ControlPacket {
    
    /// Reserved fixed header flags for PINGREQ packet
    static let flags: FixedHeaderFlags = 0
    
    /// The fixed header for PINGREQ packet
    var fixedHeader: FixedHeader
}