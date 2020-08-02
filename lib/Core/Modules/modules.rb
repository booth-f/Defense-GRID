modules = ["'Security'", "'Updater'", "'Routing'", "'VPN'"]

begin
    modules.each do |module|
        begin
            include "#{module}"
        rescue
            puts "Could not load #{module} module."
        else
            puts "#{module} module loaded successfully"
        end
    end
rescue
    abort "FATAL: Failure loading Defense-GRID Core modules!"
end