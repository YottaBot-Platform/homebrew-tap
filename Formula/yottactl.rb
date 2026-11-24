# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.2.0/yottactl-1.2.0-darwin-arm64.tar.gz"
      sha256 "1439483a08634bfcd53fa8e8cdc92773adcff472d74dd542e4efc46fb7ad4e44"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.2.0/yottactl-1.2.0-darwin-amd64.tar.gz"
      sha256 "e6a5426fc94f2b6bfe4762c66a14fd049ed963f44e72a753b98208ef4118add1"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.2.0/yottactl-1.2.0-linux-arm64.tar.gz"
      sha256 "50a99a08a2ce7604b650c6e049d2ad25a5c2ef81aac7fecb70383e0ba962e8bc"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.2.0/yottactl-1.2.0-linux-amd64.tar.gz"
      sha256 "7c69b9c814f11795576cab5bc1706b57a575af73c019930a3abd19f4bcb984d5"
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
