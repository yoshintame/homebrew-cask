cask "typeseer" do
  version "1.5.6"
  sha256 "e1d299381c0935e1c0b843fe3f5e2fa5accd7f1298b25c6aeda009ffe4754bbf"

  url "https://typeseer.com/downloads/TypeSeer-#{version}.dmg"
  name "TypeSeer"
  desc "On-device AI autocomplete for every text field"
  homepage "https://typeseer.com/"

  livecheck do
    url "https://typeseer.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "TypeSeer.app"
end
