class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-103"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-103/x86_64-apple-darwin.tar.gz"
    sha256 "f7188085491c1139884fd8c1d08dda11333a0ebf4ebd148d421b3fe8eb8945b4"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-103/aarch64-apple-darwin.tar.gz"
    sha256 "2f617cacb40594e5923be69505ea7b68dc764bb71ac9620e525151b25eb46370"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
