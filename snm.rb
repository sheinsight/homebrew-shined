class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-114"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-114/x86_64-apple-darwin.tar.gz"
    sha256 "8c25a782a48cfc05440a67e5eafec8066dea626db849ddd7ede67f9c8b88255c"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-114/aarch64-apple-darwin.tar.gz"
    sha256 "e1a7701180bc3ab12ddcdcd5182da0fc371c9ec02da13eca40281e559a854438"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
