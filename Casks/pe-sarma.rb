cask "pe-sarma" do
  version "1.1.0"
  sha256 "f64a02764e6da45cf70e476cd901fad84136926215f2ca1e9201b18e003c5b19"

  url "https://github.com/gordasgdc/pe-sarma/releases/download/v#{version}/PeSarma-#{version}.dmg"
  name "Pe sârmă"
  desc "Capturi și clipboard agățate pe un fir sub bara de meniu (ediția în limba română a Tendedero)"
  homepage "https://gordas.dev/pe-sarma/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "PeSarma.app"

  zap trash: [
    "~/Library/Application Support/PeSarma",
    "~/Library/Logs/PeSarma",
    "~/Library/Preferences/dev.gordas.PeSarma.plist",
  ]
end
