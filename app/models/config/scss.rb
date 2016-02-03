module Config
  class Scss < Base
    def serialize(data = content)
      Config::Serializer.yaml(data)
    end

    private

    def parse(file_content)
      Config::Parser.yaml(file_content)
    end
  end
end
