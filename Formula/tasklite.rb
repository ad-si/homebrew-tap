class Tasklite < Formula
  desc "The CLI task manager for power users"
  homepage "https://tasklite.org"
  url "https://github.com/ad-si/TaskLite/releases/download/v0.3.0.0/tasklite_macos_x86_64.zip"
  version "0.3.0.0"
  sha256 "b77245e0bf438b6c38913c360cf2a72f61834d632f8c2ea2eefcb015c30e8dcb"

  def install
    bin.install "tasklite"
  end

  test do
    system "#{bin}/tasklite", "help"
    system "#{bin}/tasklite", "add", "Buy milk"
  end
end
