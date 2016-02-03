require "spec_helper"
require "app/models/linter_enabled_checker"

describe LinterEnabledChecker do
  describe ".for" do
    context "when the hound config is enabled for the given language" do
      it "returns true" do
        hound_config = double("HoundConfig", enabled_for?: true)
        config = double(
          "Config",
          linter_names: ["ruby"],
          hound_config: hound_config,
        )

        result = LinterEnabledChecker.for(config)

        expect(result).to eq true
      end
    end

    context "when the hound config is disabled for the given language" do
      it "returns false" do
        hound_config = double("HoundConfig", enabled_for?: false)
        config = double(
          "Config",
          linter_names: ["ruby"],
          hound_config: hound_config,
        )

        result = LinterEnabledChecker.for(config)

        expect(result).to eq false
      end
    end
  end
end
