module Config
  class Mdast < Base
    def serialize(data = content)
      Config::Serializer.json(data)
    end

    private

    def parse(file_content)
      Config::Parser.json(file_content)
    end
  end
end
