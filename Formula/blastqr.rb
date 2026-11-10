class Blastqr < Formula
  desc "Send files to the blastQR app as QR codes shown in the terminal"
  homepage "https://codeberg.org/cukha/blastqr"
  version "3.0.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.6/blastqr-cli-v3.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "87c5fc196f569f2197dbcdb1e0e77124be25b432f3140217377b23c66f6000c9"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.6/blastqr-cli-v3.0.6-x86_64-apple-darwin.tar.gz"
      sha256 "3df716c715c265daee65eef4af8af64f78fc9b3995ceb02d809bc86552b88480"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.6/blastqr-cli-v3.0.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5859048438ca5c26b548f9fb1d0211b017ebca7be7b5fb8165ea121678d7980"
    end
    on_intel do
      url "https://github.com/cu-kha/blastqr/releases/download/v3.0.6/blastqr-cli-v3.0.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c7794fdf60df4a3365af2731c279b727c4eb4265a5765f382319f8c4ed1b26fd"
    end
  end

  def install
    bin.install "blastqr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/blastqr --version")
  end
end
