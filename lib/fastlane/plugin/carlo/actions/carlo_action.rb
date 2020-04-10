require 'fastlane/action'
require_relative '../helper/carlo_helper'

module Fastlane
  module Actions
    class CarloAction < Action
      def self.run(params)
        UI.message("This is awesome 🤩!")

        require "open-uri"

        open("https://www.apparata.nl/files/2020/01/android-logo-poppetje-919x612.jpg") {|f|
          File.open("android.jpg","wb") do |file|
            file.puts f.read
          end
        }
      end

      def self.description
        "Its the best"
      end

      def self.authors
        ["Carlo Matulessy"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "The myth the man the legend"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "CARLO_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
