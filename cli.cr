require "option_parser"

class CLI
  @version = "1.0.0"
  @command_name = "cli"
  @options : Hash(Symbol, Bool | Nil | String) = {
    :bool => false,
    :string => nil
  } of Symbol => Bool | Nil | String
  @command : String?
  @args : Array(String) = [] of String

  def self.start(argv)
    new(argv).run
  end

  def initialize(argv)
    args = parse_options(argv)
    @args = args.nil? ? [] of String : args
    @command = @args.shift if @args.size > 0
  end

  def run
    return print_usage if @command.nil?

    case @command
    when "version"
      print_version
    when "help"
      print_help
    else
      puts %Q[Could not find command "#{@command}"]
      exit 1
    end
  end

  private def parse_options(args)
    opt = OptionParser.new
    opt.on("-b", "--bool", "") { @options[:bool] = true; puts "option: bool=#{@options[:bool]}" }
    opt.on("-s STRING", "--string=STRING", "") { |x| @options[:string] = x; puts "option: string=#{@options[:string]}" }
    opt.invalid_option do |flag|
    end
    opt.parse(args.dup)
  end

  private def print_usage
    puts <<-USAGE
      Usage:
        #{@command_name} [COMMAND]
      Commands:
        #{@command_name} help [COMMAND]
        #{@command_name} version
      Options:
        -b, -bool
        -s STRING, --string=STRING
      USAGE
  end

  private def print_help
    return print_usage if @args.empty?

    case @args.first
    when "version"
      puts <<-HELP
        Usage:
          #{@command_name} version
        Pirnt version
        HELP
    when "help"
      puts <<-HELP
        Usage:
          #{@command_name} help [COMMAND]
        HELP
    else
      puts %Q[Could not find command "#{@args.first}"]
      exit 1
    end
  end

  private def print_version
    puts @version
  end

end

CLI.start ARGV
