class Gg < Formula
  desc "The 2-letter agent-native git client - 98% token savings for AI agents"
  homepage "https://github.com/cyclecore-dev/gg"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.1/gg_darwin_aarch64"
      sha256 "6238e9f4fb4a9d87a6a90b2dd8d8079f8900c19557339ea21fdd69f9c8574620"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.1/gg_darwin_x86_64"
      sha256 "389cb77086285bee6e4ea232153af31da8592e5e8306060920d4920176311c2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.1/gg_linux_aarch64"
      sha256 "d61d96c519b920c906fe80ed85f83f1dfb479a06237b8032c86bc787ece197a5"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.1/gg_linux_x86_64"
      sha256 "2d0352b3ba0bb634d16f594344315b3693bce15d37e524e4d36e3bcaa94b552a"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "gg"
  end

  test do
    assert_match "gg v#{version}", shell_output("#{bin}/gg version")
  end
end
