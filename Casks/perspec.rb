cask "perspec" do
  version "1.1.0.0"

  on_arm do
    sha256 "be47e4b1cc5122e002b443dcfb8b00df74ba3874fd1bc81e46875e2d73b9b6b8"
    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-14_arm64.zip"
  end
  on_intel do
    sha256 "691b91f40f722ab80f2badc270a2705a01773f3c36e0e49f9627e4c33832f057"
    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-15-intel_x86_64.zip"
  end

  name "Perspec"
  desc "Scriptable desktop app to correct the perspective of images"
  homepage "https://github.com/ad-si/Perspec"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Perspec.app"
end
