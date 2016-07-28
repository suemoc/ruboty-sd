module Ruboty
  module SuddenlyDeath
    module Actions
      class SuddenlyDeath < Ruboty::Actions::Base
        def call
          message.reply(suddenly_death)
        rescue => e
          message.reply(e.message)
        end

        private
        def suddenly_death
          word = message[1]
          display_length = word.chars.map{|c| c.bytesize == 1 ? 1 : 2}.inject(:+)
          balloon_length = (display_length / 2.0).ceil

          reply = <<-EOS
＿人#{'人' * balloon_length}人＿
＞　#{word}　＜
￣Y^#{'Y^' * (balloon_length - 1)}Y￣
          EOS
          reply
        end
      end
    end
  end
end
