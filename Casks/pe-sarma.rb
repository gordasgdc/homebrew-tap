cask "pe-sarma" do
  version "1.1.1"
  sha256 "3df9fe0457da833122993ca8239dce698f5ce509e2700d53a30d7ed3bac6d4ee"

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
