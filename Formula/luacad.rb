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
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.0.0/luacad-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "00de29d1d84c83c02682ecda1371e77d467c926261a6d9dcf9e1d8cb6d877872"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.0.0/luacad-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "b56607baac0bd5de07aa6417c0d95583a558345305108e0c22fa0491ffa56ca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.0.0/luacad-1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a73eda852b971d87e557d346813f982136530af2466f56b1307758fd2d22b782"
    end
    on_intel do
      url "https://github.com/ad-si/LuaCAD/releases/download/v1.0.0/luacad-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e9e104d3483a9760d07af991edd8b96d7f2ba32c35cbb31950fc777766729439"
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
