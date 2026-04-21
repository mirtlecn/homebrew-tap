cask "gridmove" do
  version "1.6.2"
  sha256 "8ba52b949eafc3184e16466a91135cffa28dabf62eaad3bb8c22292137b1d864"

  url "https://github.com/mirtlecn/GridMoveForMac/releases/download/v#{version}/GridMove.arm64.dmg",
      verified: "github.com/mirtlecn/GridMoveForMac/releases/download/"
  name "GridMove"
  desc "Move and snap windows into custom layouts"
  homepage "https://github.com/mirtlecn/GridMoveForMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "GridMove.app"

  zap trash: [
    "~/.config/GridMove",
  ]

  caveats do
    unsigned_accessibility
  end
end
