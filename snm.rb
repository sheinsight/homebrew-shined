class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-96"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-96/x86_64-apple-darwin.tar.gz"
    sha256 "2df6647f94471552b774e83cafd77d1045e456633ac1ea0f057b2c4618c67c94"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-96/aarch64-apple-darwin.tar.gz"
    sha256 "4f55bb10361e4d1884fedda9fa5322a673d0fbe8d55d793f93d8dbdcf8542bba"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
