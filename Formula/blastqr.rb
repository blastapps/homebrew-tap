class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/blast/blastqr"
  version "3.3.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.0/blastqr-cli-v3.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "fbb15e7ade7a8d7228e893e53e57e59b6a4d22dda0fb396d412b0f674210a00b"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.0/blastqr-cli-v3.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd1a2ed0f12c8cb6d201a3d31cef7606ef65e2878bae0b1285a51d156ed6cfb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.0/blastqr-cli-v3.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2c7178b7554a6e041819717174b5766438d430f3727c7719ebeeaa08bc31a24"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.0/blastqr-cli-v3.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94b70613aa6fec311ddb58f63e147a3b7f3dff79940ef0f5e8fb73f3cdf92941"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
