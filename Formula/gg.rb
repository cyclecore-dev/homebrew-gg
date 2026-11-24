class Gg < Formula
  desc "The 2-letter agent-native git client - 98% token savings for AI agents"
  homepage "https://github.com/cyclecore-dev/gg"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.2/gg-darwin-arm64"
      sha256 "f887f3462c8bff9927df76152dc37e2774c0b3a5b7a3daa51d5d80590e52fc64"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.2/gg-darwin-amd64"
      sha256 "b9b1af528e1249fa7934def9c92ff04757ea75907b93fab9d4a83d3145ea35e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.2/gg-linux-arm64"
      sha256 "14e1b79336873383861c6a6d0762241c5f87c738d80bdefddb838a22bc33a033"
    end
    on_intel do
      url "https://github.com/cyclecore-dev/gg/releases/download/v0.10.2/gg-linux-amd64"
      sha256 "71f374b1c17833377c8d295da004d944832b3534565893868ae53a41c65eec08"
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
