# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.0.1/yottactl-1.0.1-darwin-arm64.tar.gz"
      sha256 "428b8733c46cd481180f8263a838cf4c290517a55b0c3a0fd8b8212568b8bbbf"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.0.1/yottactl-1.0.1-darwin-amd64.tar.gz"
      sha256 "c359be09da389856872de0c565902ad9afb869e8d936c3f94cf1974a8573941c"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.0.1/yottactl-1.0.1-linux-arm64.tar.gz"
      sha256 "4b83c4fb0a4a0162a2f8eb6094787e950845697e5f0b44830a9fb0011dcaea62"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.0.1/yottactl-1.0.1-linux-amd64.tar.gz"
      sha256 "01f8b1e6910421995c4d1f5eddb08a4954c65718ba163cfa9f158d91403e7f96"
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
