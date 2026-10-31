cask "keytype" do
  version "1.8"
  sha256 "cea72a1ce59d8275d5d143e189186b4e565d403ac78159d102d786a1f0ea44d6"

  url "https://github.com/johnbean393/KeyType/releases/download/v#{version}.0/KeyType.#{version}.dmg"
  name "KeyType"
  desc "Open-source on-device AI tab-autocomplete in any text field"
  homepage "https://github.com/johnbean393/KeyType"

  livecheck do
    url "https://johnbean393.github.io/KeyType/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :sonoma

  app "KeyType.app"
end
