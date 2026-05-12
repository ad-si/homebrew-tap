class Tasklite < Formula
  desc "CLI task manager for power users"
  homepage "https://tasklite.org"
  version "0.5.0.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ad-si/TaskLite/releases/download/v#{version}/tasklite_macos_arm64.zip"
      sha256 "00542e4e53f028f6301fdcc469cfa000a12e74c12077d797ac0dba718919f4be"
    end
    on_intel do
      url "https://github.com/ad-si/TaskLite/releases/download/v#{version}/tasklite_macos_x86_64.zip"
      sha256 "f394ca438e7ea619a0cf67a6eab6ec1a80013055c5dff45c89c9bed8872cd66c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ad-si/TaskLite/releases/download/v#{version}/tasklite_linux_arm64.zip"
      sha256 "bf7b868face5199e57615e274be15341c487e551d47558f48e449a352f971601"
    end
    on_intel do
      url "https://github.com/ad-si/TaskLite/releases/download/v#{version}/tasklite_linux_x86_64.zip"
      sha256 "cec201eb783678b4bd66718717bf599c15aa4084be5ec0f137d12230e1dbce1b"
    end
  end

  def install
    bin.install "tasklite"
  end

  test do
    system "#{bin}/tasklite", "help"
    system "#{bin}/tasklite", "add", "Buy milk"
  end
end
