module Config
  class Haml < Base
    private

    def parse(file_content)
      result = Config::Parser.yaml(file_content)

      ensure_correct_type(result)
    end
  end
end
