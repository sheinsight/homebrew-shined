class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-117"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-117/x86_64-apple-darwin.tar.gz"
    sha256 "59e73f0c2263e38727539daca94a2f9a2d1695206ab9be346558f267b15c8a65"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-117/aarch64-apple-darwin.tar.gz"
    sha256 "22663d31e50e09dba07defbcb106e3d8c376ea7cddec6066e02f51528e9cc309"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
