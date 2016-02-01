require "dotenv"
Dotenv.load

module Hound; end

def load_constants
  if Hound.constants.none?
    require "config/initializers/constants"
  end
end
