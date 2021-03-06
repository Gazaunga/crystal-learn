def generator(n : T) forall T
  channel = Channel(T).new
  spawn do
    loop do
      sleep n
      channel.send n
    end
  end
  channel
end

ch1 = generator(1)
ch2 = generator(1.5)
ch3 = generator(5)

loop do
  index, value = Channel.select(
    ch1.receive_select_action,
    ch2.receive_select_action,
    ch3.receive_select_action
  )

  case index
  when 0
    int = value.as(typeof(ch1.receive))
    puts "Int: #{value}"
  when 1
    float = value.as(typeof(ch2.receive))
    puts "Float: #{value}"
  when 2
    break
  else
    raise "BUG: Channel.select returned invalid index #{index}"
  end
end
