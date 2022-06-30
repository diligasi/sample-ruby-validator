class StringValidatorError < StandardError

  def initialize(msgs = nil)
    puts "==> Invalid string!\n\n["
    format_msg(msgs)
    puts "]\n\n"
  end

  private

  def format_msg(msgs)
    msgs.each.with_index do |msg, idx|
      puts "  \"#{msg}\"#{idx != (msgs.size - 1) ? ',' : ''}"
    end
  end
end
