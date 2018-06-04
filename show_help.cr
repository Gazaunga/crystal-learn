require "colorize"

def showcommands
    puts "\nAvailable commands:"
    print "  package_install_request   ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Install a package from the Debian repositories"

    print "  mysql_request             ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Get a MySQL database"

    print "  mysql_request_extra       ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Get additional MySQL database"

    print "  postgres_request          ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Get a Postgres database"

    print "  postgres_request_extra    ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Get additional Postgres database"

    print "  mongo_request             ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Get a MongoDB database"

    print "  memory_limit_request      ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Raise safety cap for memory limit (3.5G -> 11.4G)"

    print "  process_limit_request     ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Raise satety cap for process limit (75 -> 250)"

    print "  httpd_vhost_request       ".colorize(:blue)
    print "[A] ".colorize(:yellow)
    puts "Use your own domain name"

    print "  httpd_public_html_enable  ".colorize(:blue)
    puts "Enable your public_html directory"

    print "  httpd_public_html_disable ".colorize(:blue)
    puts "Disable your public_html directory"

    print "  httpd_logs_enable         ".colorize(:blue)
    puts "Write apache access & error logs to your home dir"

    print "  httpd_logs_disable        ".colorize(:blue)
    puts "Don't write apache logs"

    print "  contact_email             ".colorize(:blue)
    puts "Update your contact email address"

    print "  contact_phone             ".colorize(:blue)
    puts "Update your contact phone number"

    print "  twofactor_google_enable   ".colorize(:blue)
    puts "Enable Google two-factor authentication"

    print "  twofactor_google_disable  ".colorize(:blue)
    puts "Disable Google two-factor authentication"

    print "  nanobot_setnick           ".colorize(:blue)
    puts "Set extra nickname nanobot will voice in #shells"

    print "  docker_new                ".colorize(:blue)
    print "[N] ".colorize(:red)
    puts "Start a docker container"

    print "  file_backup               ".colorize(:blue)
    print "[N] ".colorize(:red)
    puts "Backup a file or directory"

    print "  file_restore              ".colorize(:blue)
    print "[N] ".colorize(:red)
    puts "Restore a file or directory from backup"

    print "  help                      ".colorize(:blue)
    puts "Show this help"

    print "  exit                      ".colorize(:blue)
    puts "Exit manager"

    print "[A] ".colorize(:yellow)
    puts "= Requires approval by admin"
    print "[N] ".colorize(:red)
    puts "= Not yet implemented"
end

showcommands
