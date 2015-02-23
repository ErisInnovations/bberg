require 'java'

module Bberg

  # Path to where the bloomberg java API jar can be found.
  #
  # Defaults defaults to the relative java directory path,
  # can be overidden via the env variable BBERG_JAVA_HOME
  #
  # @return [String] path to jar
  def self.jar_path
    # load either from BBERG_JAVA_HOME or the default location
    base_path = ENV['BBERG_JAVA_HOME'] || File.join(File.dirname(__FILE__), '../java')
    File.join(base_path, 'blpapi-3.6.1-0.jar')
  end

  # Module to hold references to the native java API classes in a ruby friendly way.
  module Native
    require Bberg.jar_path
    import com.bloomberglp.blpapi.CorrelationID
    import com.bloomberglp.blpapi.Datetime
    import com.bloomberglp.blpapi.Element
    import com.bloomberglp.blpapi.Event
    import com.bloomberglp.blpapi.InvalidRequestException
    import com.bloomberglp.blpapi.Logging
    import com.bloomberglp.blpapi.Message
    import com.bloomberglp.blpapi.MessageIterator
    import com.bloomberglp.blpapi.Name
    import com.bloomberglp.blpapi.Request
    import com.bloomberglp.blpapi.Service
    import com.bloomberglp.blpapi.Session
    import com.bloomberglp.blpapi.SessionOptions
    import com.bloomberglp.blpapi.Schema    
  end

end
