#!/usr/bin/env crystal

class Motd
@@red    = "\033[31m"
@@green  = "\033[32m"
@@yellow = "\033[33m"
@@blue   = "\033[34m"
@@reset   = "\033[0m"

def printheader

puts "#{@@blue} _____ #{@@green}Welcome#{@@reset}#{@@blue} ______ _ _"
puts "|  __ \         | ___ (_) |"
puts "| |  \/ __ _ ___| |_/ /_| |_"
puts "| | __ / _` |_  / ___ \ | __|"
puts "| |_\ \ (_| |/ /| |_/ / | |_"
puts " \____/\__,_/___\____/|_|\__|"
puts ""
end

def sysinfo
user = %x(id -u -n).chomp
puts "#{@@green}User           : #{user}#{@@green}"
puts "Disk total     : #{%x(df -h /home | tail -1 | awk '{print $2}')}"
puts "Disk free      : #{%x(df -h /home | tail -1 | awk '{print $4}')}"
end

end
    
def main
cli = Motd.new
cli.printheader
cli.sysinfo
end

##=MAIN=##

main
