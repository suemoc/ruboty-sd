require "ruboty/sd/actions/suddenly_death"

module Ruboty
  module Handlers
    class SuddenlyDeath < Base
      on /sd\s+(.*)/i, name: 'suddenly_death', description: 'Return input message as suddenly death'

      def suddenly_death(message)
        Ruboty::SuddenlyDeath::Actions::SuddenlyDeath.new(message).call
      end

    end
  end
end
