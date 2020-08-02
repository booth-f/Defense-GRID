# 
#   Defense-GRID
#  Apt Definitions
#

class Apt
    
    def self.update
        # TODO: Run update fetching
        return `apt update`
    end

    def self.upgrade
        # TODO: Run package upgrade
        return `apt upgrade -y`
    end

    def self.clean
        # TODO: Clean package DB
        return `apt clean`
    end

    def self.auto_remove
        # TODO: Auto remove old packages
        return `apt autoremove`
    end

    def self.install(package)
        # TODO: Install package
        install = "apt install #{package}"
    end
    
end