cask "post-cli" do
  version "1.5.0"

  on_intel do
    sha256 "c0571a91489bdf44594eebe2d3a0aba52103dcf3a1d010fb610dc1fb70f53f4f"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_amd64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  on_arm do
    sha256 "e422a13e4fdf7cfaa44241f6394dcb09bc67c9765a52f97b4b470aaff38aca54"

    url "https://github.com/mirtlecn/post-cli/releases/download/v#{version}/post_#{version}_darwin_arm64.tar.gz",
        verified: "github.com/mirtlecn/post-cli/releases/download/"
  end

  name "post-cli"
  desc "Command-line client for post"
  homepage "https://github.com/mirtlecn/post-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
  binary "post"

  zap trash: [
    "~/.config/post",
  ]
end
