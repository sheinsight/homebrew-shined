class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-119"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-119/x86_64-apple-darwin.tar.gz"
    sha256 "27492d3b549492bdbef65264f5df642e00e9ccc4e8f085a9fccf4e9815478b3c"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-119/aarch64-apple-darwin.tar.gz"
    sha256 "1b2a64e542f08f37349f59a8739259b9000dd13bd3814d5c956eac484c87e58d"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
