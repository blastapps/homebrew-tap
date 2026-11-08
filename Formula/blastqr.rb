class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.4/blastqr-cli-v3.0.4-aarch64-apple-darwin.tar.gz"
      sha256 "6af9e6a127e806323a3af32bf14fa90cffe5b0735a4032b634591f71e9540316"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.4/blastqr-cli-v3.0.4-x86_64-apple-darwin.tar.gz"
      sha256 "07fd76ec9f7fd0e3b54902d4b979a17dcb98d7c885a9dc1e86ab0f316db048c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.4/blastqr-cli-v3.0.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd87d389d961b5fa68572bd2709db9eba64ca5d58447736833e08fa5d52e0caf"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.4/blastqr-cli-v3.0.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c3c86e3eeebaf96927d89e348a08955c93a34cb5643d22ae1d4386bb6de4c82"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
