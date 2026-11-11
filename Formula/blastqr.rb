class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.1.0/blastqr-cli-v3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4a3b301be96e1d2f3c284d0d1ed87560a8bb1ab3868964763ab19a937ee4b8d"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.1.0/blastqr-cli-v3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8a7507a818c28bde5f10b8dc307e0daa0a0715003dad26676dec82aa774d9cad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.1.0/blastqr-cli-v3.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "454627401c3c58a6eeeb286d08b8a1ce144d890ec6b50daff8254e7519b08b76"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.1.0/blastqr-cli-v3.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3f967fa84c773bc4bc1fecd6c3cc2e34fef8c1b37c04f0ec2c25a6ba3e839d3"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
