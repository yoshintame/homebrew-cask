cask "tana" do
  version "1.515.0"
  sha256 "fc102d44d02d4ebde349f58bcb9c117042d4a35ae117188db67f6cedc2c90a5b"

  url "https://github.com/tanainc/tana-desktop-releases/releases/download/v#{version}/Tana-#{version}-universal.dmg"
  name "Tana"
  desc "Workspace for notes, tasks, and meetings"
  homepage "https://tana.inc/"

  livecheck do
    url "https://github.com/tanainc/tana-desktop-releases/releases/latest"
    strategy :github_latest
  end

  app "Tana.app"
end
