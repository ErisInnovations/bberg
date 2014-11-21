module Bberg
  # Exception class that is thrown from inside the bberg gem
  class BbergException < StandardError
  end

  # This exception is raised when a session is stopped while processing a request
  class BbergSessionStopped < StandardError
  end

  # This exception is raised when a session could not be started
  class BbergSessionCouldNotStart < StandardError
  end
end
