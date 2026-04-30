cask "librime-cli" do
  version "1.6.1"
  sha256 "598609162bf6f826ae71e24dcd55ead1dd697badcd0fa2625b6b6890ccbe27b8"

  url "https://github.com/mirtlecn/public/releases/download/v#{version}/rime-cli-macos-#{version}.zip",
      verified: "github.com/mirtlecn/public/releases/download/"
  name "librime-cli"
  desc "CLI tools to deploy and run Rime schemas"
  homepage "https://github.com/mirtlecn/public"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  binary "bin/rime_api_console"
  binary "bin/rime_console"
  binary "bin/rime_deployer"
  binary "bin/rime_dict_manager"
  binary "bin/rime_patch"
  binary "bin/rime_table_decompiler"

  caveats do
    <<~EOS
      rime-cli is not signed. If macOS blocks one of the commands, remove the quarantine attribute manually, for example:

        xattr -d com.apple.quarantine "#{staged_path}/bin/rime_*"
    EOS
  end
end
