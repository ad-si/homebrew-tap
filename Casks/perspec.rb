cask 'perspec' do
  version '0.1.2.0'
  sha256 'aff4a9cc287281a898da3c326a5e6cd7a55ce7ae51982b9fba77a395d2213eef'

  url "https://github.com/ad-si/Perspec/releases/download/v#{version}/Perspec.app.zip"
  appcast 'https://github.com/ad-si/Perspec/releases.atom'
  name 'Perspec'
  homepage 'https://github.com/ad-si/Perspec'

  app 'Perspec.app'

  caveats 'Due to a render bug of gloss, ' \
    'the initial view is sometimes incorrectly scaled ' \
    'and the window needs to be rescaled to force a redraw. '
end
