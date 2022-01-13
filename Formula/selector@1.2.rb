class SelectorAT12 < Formula
  desc "Terminal app for selecting between arguments and printing the result to stdout"
  homepage "https://github.com/MHmorgan/selector"
  url "https://github.com/MHmorgan/selector/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "46258395665da4adf8702ab9714a0a76b51a2fd04a3028d1a76079117f6e3166"
  license "MPL-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/selector", "--version"
  end
end
