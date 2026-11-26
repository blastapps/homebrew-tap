class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/blast/blastqr"
  version "3.3.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.1/blastqr-cli-v3.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "457ac5a3e0aefc475bf3ac8fec3658bbd92e06eb742282c9ee88e5a4a15afbdd"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.1/blastqr-cli-v3.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "1abd0cd0fb79c0caaa66b76f0b020512b4792c410faf9c6e641021e84e93388e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.1/blastqr-cli-v3.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e227c68bb008767475f2bf4a8f82568e77b487403094f17ea9624e285e10e641"
    end
    on_intel do
      url "https://github.com/blastapps/blastqr/releases/download/v3.3.1/blastqr-cli-v3.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f7cd5bd11240e11156fd757eece3b5ffa7f0f502f317131348ecda8bf653a04"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
