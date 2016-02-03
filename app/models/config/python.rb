module Config
  class Python < Base
    def content
      @content ||= super || default_content
    end

    def serialize(data = content)
      Config::Serializer.ini(data)
    end

    private

    def parse(file_content)
      Config::Parser.ini(file_content).presence
    end

    def default_content
      ""
    end
  end
end
