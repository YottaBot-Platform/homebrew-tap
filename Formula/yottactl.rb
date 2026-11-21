# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.0/yottactl-1.1.0-darwin-arm64.tar.gz"
      sha256 "e53f8b0fafb43510cbcf2a2738bc150b396374cd8526bd77a7e97f6fd7232af9"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.0/yottactl-1.1.0-darwin-amd64.tar.gz"
      sha256 "8ef19a5a43fec68c4b885cc938a9192946f036f48fe27a53b01838fea86dfcc9"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.0/yottactl-1.1.0-linux-arm64.tar.gz"
      sha256 "73aa8e4ada128860538f80f6c3dadc49761a2b29a3a47ff6f80fb479047a992b"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.0/yottactl-1.1.0-linux-amd64.tar.gz"
      sha256 "096c6409a3141e62325778960160a49a75aa2dde408815ad5c0ae7e574310460"
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
