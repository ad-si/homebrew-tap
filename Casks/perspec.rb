cask 'perspec' do
  version '0.1.3.0'
  sha256 '865f3ed379210208a732eed3773f38289bb4b4f680025c9de99237f3b66c6a21'

  url "https://github.com/ad-si/Perspec/releases/download/v#{version}/Perspec_macOS_10-15.zip"
  appcast 'https://github.com/ad-si/Perspec/releases.atom'
  name 'Perspec'
  homepage 'https://github.com/ad-si/Perspec'

  depends_on macos: :catalina

  app 'Perspec_macOS_10-15/Perspec.app'
end
