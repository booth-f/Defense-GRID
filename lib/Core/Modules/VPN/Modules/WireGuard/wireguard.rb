class WireGuard

    def self.WG_init(interface)
        # TODO: Initialize Wireguard interface
        result = "ip link add #{interface} type wireguard"
    end

    def self.WG_teardown(interface)
        # TODO: Remove Wireguard interface
        result = "ip link del #{interface}"
    end

    def self.WG_enableMulticast
        # TODO: Enable Multicast
        result = "ip link set #{interface} multicast on"
    end

    def self.WG_disableMulticast
        # TODO: Disable Multicast
        result = "ip link set #{interface} multicast off"
    end

    def self.WG_addPeer(interface, peer, endpoint, allowedIPs)
        # TODO: Add Wireguard Peer
        result = "wg set #{interface} peer #{peer} endpoint #{endpoint} allowed-ips #{allowedIPs}"
    end

    def self.WG_delPeer(interface, peer)
        # TODO: Remove Wireguard Peer
        result = "wg set #{interface} peer #{peer} remove"
    end

    def self.WG_genkey(interface)
        # TODO: Generate private key for interface
        result = "wg genkey > /etc/wireguard/#{interface}.priv"
    end

    def self.WG_setPrivkey(interface)
        # TODO: Set private key
        result = "wg set #{interface} private-key /etc/wireguard/#{interface}.priv"
    end

    def self.WG_genPSK(interface)
        # TODO: Generate random PSK for interface
        result = "wg set #{interface} preshared-key /etc/wireguard/#{interface}.psk"
    end

    def self.WG_setKeepAlive(interface, seconds)
        result = "wg set #{interface} persistent-keepalive #{seconds}"
    end

end