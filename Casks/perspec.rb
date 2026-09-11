cask "perspec" do
  version "1.2.0.0"

  on_arm do
    sha256 "2813ed72f41686a452dabe64fd090c787f6df397b41554c3548c7955e77ce552"

    url "https://github.com/ad-si/Perspec/releases/download/v#{version}/perspec-app_macos-14_arm64.zip"
  end
  on_intel do
    sha256 "e06a1f0c595eed6213bf95391ed167333842c653cb5b5336f36da27d1eea02c1"

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
