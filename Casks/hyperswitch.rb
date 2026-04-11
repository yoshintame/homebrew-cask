cask "hyperswitch" do
  version "0.3.10-dev"
  sha256 "def3904371833586e639c1bfa2c7b7f293f60bed1cc34020e528f6ec9ecdc8dd"

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  name "HyperSwitch"
  desc "Keyboard-centric window switcher for macOS"
  homepage "https://bahoom.com/hyperswitch"

  livecheck do
    url "https://bahoom.com/hyperswitch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "HyperSwitch.app"
end
