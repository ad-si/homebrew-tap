cask 'perspec' do
  version '0.1.3.0'
  sha256 'aff4a9cc287281a898da3c326a5e6cd7a55ce7ae51982b9fba77a395d2213eef'

  url "https://github.com/ad-si/Perspec/releases/download/v#{version}/Perspec_macOS_10-15.zip"
  appcast 'https://github.com/ad-si/Perspec/releases.atom'
  name 'Perspec'
  homepage 'https://github.com/ad-si/Perspec'

  depends_on macos: :catalina

  app 'Perspec_macOS_10-15/Perspec.app'
end
