class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-113"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-113/x86_64-apple-darwin.tar.gz"
    sha256 "814c83b15c9134e3cb61625ef1a79052379b694274bc9f9207f871eaf9749340"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-113/aarch64-apple-darwin.tar.gz"
    sha256 "8d95efd27f2fcf212f4d9c6d8e385db740266b24733896e0e301d953e2a1a5e8"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
