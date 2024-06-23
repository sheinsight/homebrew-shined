class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-73"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-73/x86_64-apple-darwin.tar.gz"
    sha256 "096b5d50fe4971406c75741954ff6f89b9834aaee467e8021d6458ffefc584bd"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-73/aarch64-apple-darwin.tar.gz"
    sha256 "fa52bef3a3577b8b905ae771904e8a2e160d4f49a0bfda37b9f16efdfdcc19e9"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
