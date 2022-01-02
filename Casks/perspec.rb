cask 'perspec' do
  version '0.2.0.0'
  sha256 '036545b01d92651e65a356be5215fcc9b205a682c751f7c334361e867f0b1b12'

  url "https://github.com/feramhq/Perspec/releases/download/v#{version}/perspec-app_macos-12.1_x86_64.zip"
  appcast 'https://github.com/feramhq/Perspec/releases.atom'
  name 'Perspec'
  homepage 'https://github.com/feramhq/Perspec'

  depends_on macos: ">= :big_sur"

  app 'Perspec.app'
end
