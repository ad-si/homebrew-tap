class Luacad < Formula
  desc "Parametric CAD modeling with Lua"
  homepage "https://luacad.ad-si.com"
  license "AGPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.1/luacad-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "39fd96e30306e4db3437e8e5885789cbe8e9a601178fe0ea02009bccceac5291"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.1/luacad-1.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "d65c0e0f69bff92bc3fd90c5feb772cbb6d9933fc571e76b719a72e17880ef92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.1/luacad-1.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06ac6dc6fbcb5c9e751e181be4093c862b018b81c2067d12d43ac19adcf2d87a"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.1/luacad-1.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6264041dbfc2aabb0d59f90ecf8176dfbf020b7ca11baccfb073b8f97c516220"
    end
  end

  def install
    bin.install "luacad", "luacad-studio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/luacad --version")

    (testpath/"model.lua").write "render(cube { size = { 10, 10, 10 } })\n"
    system bin/"luacad", "convert", "model.lua", "model.stl"
    assert_path_exists testpath/"model.stl"
  end
end
