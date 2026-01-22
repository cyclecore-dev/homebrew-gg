class Gg < Formula
  desc "The 2-letter agent-native git client - 98% token savings for AI agents"
  homepage "https://github.com/cyclecore-dev/gg"
  version "0.9.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.9.6.1/gg_darwin_aarch64"
      sha256 "0bafca1e678c5d0defbee55acaf44412a4bd8d324ad550880982e88f5212d30b"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.9.6.1/gg_darwin_x86_64"
      sha256 "322b4ef74b5216f3cf637c5b06e31208ae2ce2474b8991c3c672a163d9ccc56a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.9.6.1/gg_linux_aarch64"
      sha256 "5afd69770fa5ad29b1c7d35e857574f672165c2d84d26cc3a78fd019fe3e7466"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.9.6.1/gg_linux_x86_64"
      sha256 "057166c82726af6f0440ca7035259a6db7b9e715430342ef0c50e92c6bdc68ad"
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
