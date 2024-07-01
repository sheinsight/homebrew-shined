class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-93"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-93/x86_64-apple-darwin.tar.gz"
    sha256 "1125060130208468b5a52127733d3bff5c541a5bf022c6119d6d51730a30aa46"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-91/aarch64-apple-darwin.tar.gz"
    sha256 "10d4bcd8ce1eba8a8ac38e33c05b20bb756303df52ba93fa6623260819640e09"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
