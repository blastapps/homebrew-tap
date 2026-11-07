class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.3/blastqr-cli-v3.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "01e509f9a4cabaae0c9077636481841a2d9c9f90a8afa940cabc068b540ceceb"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.3/blastqr-cli-v3.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "1658d018d47ed1ae982bb27c8f3ab0f0fec4f4bb15046b6600896ae02bc1766d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.3/blastqr-cli-v3.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95dbb4ebca5a40b7dc71bcc690082287958bd7632b2384d135cf0ab2de33db2d"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.3/blastqr-cli-v3.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6460223d01e6fc79f68004e4badf7ca586db12094eeddd5ac75ee70e58d384c3"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
