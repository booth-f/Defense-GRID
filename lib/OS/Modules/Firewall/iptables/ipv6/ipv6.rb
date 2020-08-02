class IPv6

    def add_basic_rule(interface, protocol, host, action)
        # TODO: Add Basic Firewall Rule
        begin
            result = "ip6tables -A INPUT -i #{interface} -p #{protocol} -s #{host} -j #{action}"
        rescue
            puts "Could not add rule to firewall"
        else
            puts "Rule added to firewall"
        end
    end

    def remove_basic_rule
        # TODO: Remove Basic Firewall Rule
        begin
            result = "ip6tables -D INPUT -i #{interface} -p #{protocol} -s #{host} -j #{action}"
        rescue
            puts "Could not remove rule from firewall"
        else
            puts "Rule removed from firewall"
        end
    end

end