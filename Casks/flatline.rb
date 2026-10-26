cask "flatline" do
  version "1.0.0"
  sha256 "01093c983dce0f99041177b1ad745abcbd1719c0c9381d92272ee5308f19dab0"

  url "https://flatline.banast.as/releases/flatline-#{version}.dmg"
  name "flatline"
  desc "Menu bar monitor for CPU, memory and network"
  homepage "https://flatline.banast.as/"

  livecheck do
    url "https://flatline.banast.as/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "flatline.app"

  uninstall quit: "as.banast.flatline"

  zap trash: [
    "~/Library/Caches/as.banast.flatline",
    "~/Library/HTTPStorages/as.banast.flatline",
    "~/Library/Preferences/as.banast.flatline.plist",
  ]
end
