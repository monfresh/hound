module Config
  class Eslint < Base
    def serialize(data = content)
      Config::Serializer.json(data)
    end

    private

    def parse(file_content)
      Config::Parser.yaml(file_content)
    end

    def default_content
      {}
    end
  end
end
