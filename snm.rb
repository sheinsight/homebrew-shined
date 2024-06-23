class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-69"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-69/snm-macos-x86_64.zip"
    sha256 "54ce45897248db7750ed9773f70bfed8dd88a9f43cd88b3f34ffa8307374162f  x86_64-apple-darwin.tar.gz"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-69/snm-macos-arm.zip"
    sha256 "509b9c4ea7ba66661e6968ce4b1a3f6e4b8c4e39ab69525b960997b3ffc5d242  aarch64-apple-darwin.tar.gz"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
