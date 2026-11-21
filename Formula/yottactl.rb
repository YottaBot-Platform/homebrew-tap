# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.1/yottactl-1.1.1-darwin-arm64.tar.gz"
      sha256 "7337292de992c3bed53e9dac8af56875547effe2b5be8d776572079903053449"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.1/yottactl-1.1.1-darwin-amd64.tar.gz"
      sha256 "83a3d8fa8acee1c8eb28bd35a4b22cc21e5eaea829af1316d00eb8addc951317"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.1/yottactl-1.1.1-linux-arm64.tar.gz"
      sha256 "e33de39d1a25ec6655f0d57860fd5850a9786a696dcfa1ac69f66178c19f7f0d"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.1/yottactl-1.1.1-linux-amd64.tar.gz"
      sha256 "ebb9c59b0df03d01de593c972c671d11f7683c9089b569e04e7b8037d13e52a2"
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
