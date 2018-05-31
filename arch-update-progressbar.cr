require "progress"

bar = ProgressBar.new

bar.width = 40

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
until bar.done?
cmd = "trizen"
args = ["-Syu", "--noconfirm"]
status, output = run_cmd(cmd, args)
bar.inc
sleep 0.1
end
puts "Process complete" unless status == 0
