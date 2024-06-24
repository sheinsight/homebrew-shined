class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "v0.0.1-82"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-82/x86_64-apple-darwin.tar.gz"
    sha256 "44411e8b9d75a3fca355577d9907ca612502491c9038065ea290b3b367595198"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/v0.0.1-82/aarch64-apple-darwin.tar.gz"
    sha256 "866a61698b463f05057a43fea23bc383b4ff484a416d0c27fdba1942ec7eebef"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
