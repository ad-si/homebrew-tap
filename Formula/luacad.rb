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
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.0/luacad-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ea3b56fb8c05abf4f1cb6e0db491a4f505e2588a4d52bb43c6db1a3c7982fe06"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.0/luacad-1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "b800da9d73380c0ce70d66016865a7d8add2bd9b8ff09dcb577840b34e5fa1c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.0/luacad-1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "623cb86845bbff712ccb994feae9ce72b7ebe4f62c0b02955d3f04ad9e0d65ee"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.2.0/luacad-1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "508ba5eb49694fa8c8229d929af1344a92a6ded63d76047f6a39c83a59adaba3"
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
