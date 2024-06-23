class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-72"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-72/x86_64-apple-darwin.tar.gz"
    sha256 "3160ab625deda10c2a150956f2ef16d5bbc0f286d3aa99d1ebaa3cbb4dc2eb40"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-72/aarch64-apple-darwin.tar.gz"
    sha256 "3a0dafff53b273d52ddd134b45a6bbc9067fb2c977181a7744ba29dd4565f088"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
