require "spec_helper"
require "app/models/config/base"
require "app/models/config/remark"

describe Config::Remark do
  it_behaves_like "a service based linter" do
    let(:raw_config) do
      <<-EOS.strip_heredoc
        {
          "heading-style": "setext"
        }
      EOS
    end

    let(:hound_config_content) do
      {
        "remark" => {
          "enabled" => true,
          "config_file" => "config/.remarkrc",
        },
      }
    end
  end
end
