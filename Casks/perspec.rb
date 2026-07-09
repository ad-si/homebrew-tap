cask "perspec" do
  version "1.0.0.0"

  on_arm do
    sha256 "d85f5da7d8815aab970e60455ee5f6acb0228c5659182b54392fde922d186af2"
    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-14_arm64.zip"
  end
  on_intel do
    sha256 "fffcca5d0f24db58cf0d09f7803b2e88ecf705a88af86655336d3a4bb017bc5a"
    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-15-intel_x86_64.zip"
  end

  name "Perspec"
  desc "Scriptable desktop app to correct the perspective of images"
  homepage "https://github.com/ad-si/Perspec"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Perspec.app"
end
