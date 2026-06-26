class Slidecli < Formula
  desc "Terminal slide editor and presenter"
  homepage "https://github.com/Yukkurisiteikitai/SPIC"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Yukkurisiteikitai/SPIC/releases/download/v0.1.3/slidecli-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "12e80a02c1eb07f2c7026c3708a7c1163e653c6db218c9b458d680c35af54463"
    else
      url "https://github.com/Yukkurisiteikitai/SPIC/releases/download/v0.1.3/slidecli-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "c470adfbb2383f4fc83e791c8e86a3b63971e391efed09fd7337fcaa7a064ef0"
    end
  end

  def install
    bin.install "slidecli"
    doc.install "LICENSE"
  end
end
