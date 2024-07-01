class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-91"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-91/x86_64-apple-darwin.tar.gz"
    sha256 "cee90bab56966246f41fdd948bda1237df55dbee8495821ee96d940674f39020"
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
