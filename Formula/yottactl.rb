# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.0.2/yottactl-1.0.2-darwin-arm64.tar.gz"
      sha256 "8c537d0c1696356993a29323711e9ddd35da1a8a8a8a9daf70cde09a2c3d59a1"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.0.2/yottactl-1.0.2-darwin-amd64.tar.gz"
      sha256 "c837d60b582013e5e19c86e6e95f26caa983ce4f7d79115b78cd6b073f7294fd"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.0.2/yottactl-1.0.2-linux-arm64.tar.gz"
      sha256 "912fb856960668a64397f128beaa5fafe4d84b1697558e8461394974b7a5a885"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.0.2/yottactl-1.0.2-linux-amd64.tar.gz"
      sha256 "e0599304cc2ed2947eadfc18878361fdb8b4d2057bc1cbc215219f8388c406ab"
    end
  end

  def install
    bin.install "yottactl"
    generate_completions_from_executable(bin/"yottactl", "completion")
  end

  test do
    assert_match "yottactl #{version}", shell_output("#{bin}/yottactl --version")
  end
end
