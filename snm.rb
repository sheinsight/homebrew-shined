class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-105"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-105/x86_64-apple-darwin.tar.gz"
    sha256 "6b10ef914e7b62dd93aec0d98db70847a57a9fe556a9d82d209a87781a11dafd"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-105/aarch64-apple-darwin.tar.gz"
    sha256 "002a66df89899818b519378d9f5b0529a28ebc7526dc2bcfe035301b6257675e"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
