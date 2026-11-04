cask "perspec" do
  version "1.2.1.0"

  on_arm do
    sha256 "2710ebe35cf76f8d38701d491e449121f9db86526fbbd75105c32b4bf0719b40"

    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-14_arm64.zip"
  end
  on_intel do
    sha256 "093e3e5879496c3761ff6a8032903cc89c7f3a3a4968ddcb26494b9e9ab19749"

    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-15-intel_x86_64.zip"
  end

  name "Perspec"
  desc "Scriptable desktop app to correct the perspective of images"
  homepage "https://github.com/ad-si/Perspec"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Perspec.app"
end
