# Written by each yottactl release; a change made here is replaced by the next.
class Yottactl < Formula
  desc "YottaBot's command-line tool"
  homepage "https://yotta.bot/platform"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.2/yottactl-1.1.2-darwin-arm64.tar.gz"
      sha256 "0360224e8912d50931eacbb01a75e783cb997a0ae996365922858f0f66b304de"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.2/yottactl-1.1.2-darwin-amd64.tar.gz"
      sha256 "651cb0b6c0a6f7b02e7e31fcf0da928ade7c6eb1d2efe1d0f3a3f2a81a87bdb2"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.app.yotta.bot/yottactl/1.1.2/yottactl-1.1.2-linux-arm64.tar.gz"
      sha256 "cac25a05b90a40868496754112980453e12ad1afbd0ad4bb7da8fd1d7b96325b"
    end
    on_intel do
      url "https://downloads.app.yotta.bot/yottactl/1.1.2/yottactl-1.1.2-linux-amd64.tar.gz"
      sha256 "2e1e60434035a8395b52bbc1bbb7b0ee94eb37e0cfbfb1accc51c303613e543b"
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
