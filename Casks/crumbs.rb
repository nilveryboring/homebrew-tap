cask "crumbs" do
  version "0.1.2"
  sha256 "a6571ac082bffaa24353c90c68d615be5b3c51df26b105546f01cb10ddd7263a"

  url "https://github.com/nilveryboring/crumbs/releases/download/v#{version}/Crumbs-#{version}.zip"
  name "Crumbs"
  desc "Find what your AI coding agents left behind"
  homepage "https://www.nilni.com/crumbs"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Crumbs.app"

  zap trash: [
    "~/Library/Application Support/Crumbs",
    "~/Library/Preferences/com.nilni.Crumbs.plist",
  ]
end
