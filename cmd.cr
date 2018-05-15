def run_cmd(cmd, args)
  stdout = IO::Memory.new
  stderr = IO::Memory.new
  status = Process.run(cmd, args: args, output: stdout, error: stderr)
  if status.success?
    {status.exit_code, stdout.to_s}
  else
    {status.exit_code, stderr.to_s}
  end
end

##=MAIN=##

cmd = "ping"
hostname = "my_host"
args = ["-c 2", hostname]
status, output = run_cmd(cmd, args)
puts "ping: #{hostname}: Name or service not known" unless status == 0
