class Gg < Formula
  desc "The 2-letter agent-native git client - 98% token savings for AI agents"
  homepage "https://github.com/cyclecore-dev/gg"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_darwin_aarch64"
      sha256 "8ecaf303f2679e9d3c329f68b73dd3364066d59b7b5208387d154c525c462171"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_darwin_x86_64"
      sha256 "a2622167ed2089d4530d379a25a507e7ce61391b0a79c4596685b1db9bfabac0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_linux_aarch64"
      sha256 "11e4c554fa6f4cdd7dba8cf5769b4d0de0e5e613209f167bb9b41f226e6782de"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.0/gg_linux_x86_64"
      sha256 "d5c3367430fe8ed32d6888eb8c53d54e9c4f6e36afc52c621be6bc68f6b2ad64"
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
