cask "rar" do
  version "7.23"
  sha256 "68b393c000758d477fde43c955ff7542f12f76f3f5e87cdda923152fc791bd4d"

  url "https://www.rarlab.com/rar/rarmacos-arm-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/rarmacos-arm-(\d+)(\d{2})\.tar\.gz/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]}.#{match[1]}" }
    end
  end

  depends_on arch: :arm64

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}"], must_succeed: false
  end
end
