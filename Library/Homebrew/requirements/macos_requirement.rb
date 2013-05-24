require 'requirement'

class MinimumMacOSRequirement < Requirement
  fatal true

  def initialize(version)
    @version = version
    super([])
  end
  
  satisfy { MacOS.version >= @version }

  def message
    "MacOS X #{Version.new(@version)} or newer is required."
  end
end
