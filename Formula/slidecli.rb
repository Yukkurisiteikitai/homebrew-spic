class Slidecli < Formula
  desc "Terminal slide editor and presenter"
  homepage "https://github.com/Yukkurisiteikitai/SPIC"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Yukkurisiteikitai/SPIC/releases/download/v0.1.2/slidecli-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "ff64a4405e6863d6b1ee0b3e9aa7c21a9ed6eab24051de3608b7b71310e7a3eb"
    else
      url "https://github.com/Yukkurisiteikitai/SPIC/releases/download/v0.1.2/slidecli-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "0512998b8e42197919fb337a1c9a3afbee2b52ba34d49ff3f5d664969ee3fca8"
    end
  end

  def install
    bin.install "slidecli"
    doc.install "LICENSE"
  end
end
