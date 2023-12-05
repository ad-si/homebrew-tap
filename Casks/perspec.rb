cask 'perspec' do
  version '0.2.0.0'
  sha256 '036545b01d92651e65a356be5215fcc9b205a682c751f7c334361e867f0b1b12'

  url "https://github.com/feramhq/Perspec/releases/download/v#{version}/perspec-app_macos-12.1_x86_64.zip"
  name "Perspec"
  desc "Scriptable desktop app to correct the perspective of images"
  homepage "https://github.com/feramhq/Perspec"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :x86_64

  app "Perspec.app"
end
