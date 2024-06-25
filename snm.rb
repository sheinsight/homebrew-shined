class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-83"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-83/x86_64-apple-darwin.tar.gz"
    sha256 "8ce62abe2b96f16dfd8d956cf47360745e0c48fd6598bf46e84c05f5fb2dc522"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-83/aarch64-apple-darwin.tar.gz"
    sha256 "e92a3ae6bd648f4db75755b2c0347342d5cf893b62dfa6b9462f2dfc27cf5d59"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
