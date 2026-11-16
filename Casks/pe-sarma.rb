cask "pe-sarma" do
  version "1.0.0"
  sha256 "8ea3a5d748acc3e201c3444e8d913a8cdd11232144961d201c3460bed1f3bfb7"

  url "https://github.com/gordasgdc/pe-sarma/releases/download/v#{version}/PeSarma-#{version}.dmg",
      verified: "github.com/gordasgdc/pe-sarma/"
  name "Pe sârmă"
  desc "Capturi și clipboard agățate pe un fir sub bara de meniu (ediția în limba română a Tendedero)"
  homepage "https://gordas.dev/pe-sarma/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "PeSarma.app"

  zap trash: [
    "~/Library/Application Support/PeSarma",
    "~/Library/Logs/PeSarma",
    "~/Library/Preferences/dev.gordas.PeSarma.plist",
  ]
end
