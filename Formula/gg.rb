class Gg < Formula
  desc "The 2-letter agent-native git client - 98% token savings for AI agents"
  homepage "https://github.com/cyclecore-dev/gg"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_darwin_aarch64"
      sha256 "7ed7420bbf456cf401a878109296ffb9e47755a1ab232520f4dfd20ae4ebcab2"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_darwin_x86_64"
      sha256 "89c42884a7cf423ac48c8ed9edc6af47dfff57b28d1386501cf44bd316473b17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_linux_aarch64"
      sha256 "60023e2604dfb39487ba4749994effa4cd7695335a297ce36c90484b5ba12999"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_linux_x86_64"
      sha256 "03a8bec6288af847dcc4677caf5a33ce7832a7cbd1318d3a1270db39537e90a0"
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
