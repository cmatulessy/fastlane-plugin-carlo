describe Fastlane::Actions::CarloAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The carlo plugin is working!")

      Fastlane::Actions::CarloAction.run(nil)
    end
  end
end
