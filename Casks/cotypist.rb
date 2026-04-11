cask "cotypist" do
  version "0.21"
  sha256 "008631a2fda080a4adb75ab60eb5a9777d191b58bc8daf40a20480bbc0389d87"

  url "https://cotypist.app/download/Cotypist-#{version}.dmg"
  name "Cotypist"
  desc "AI autocomplete for Mac — predicts your next words locally"
  homepage "https://cotypist.app/"

  livecheck do
    url "https://cotypist.app/updates/cotypist.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Cotypist.app"
end
