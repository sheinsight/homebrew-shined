class Snm < Formula
  desc "snm = corepack + fnm + ni ."
  homepage "https://github.com/sheinsight/snm"
  version "0.0.1-106"
  if Hardware::CPU.intel?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-106/x86_64-apple-darwin.tar.gz"
    sha256 "b7be108a7a75b8d9f38e5652f6c889c83ec1eafb0de504380bb5254e51ed3ea0"
  elsif Hardware::CPU.arm?
    url "https://github.com/sheinsight/snm/releases/download/0.0.1-106/aarch64-apple-darwin.tar.gz"
    sha256 "ec1a633cb200aa16af460518ff54a63097c256ee8d27dc90f415283c1a4b75d7"
  end
  license "MIT"
  def install
    bin.install "snm", "pnpx", "pnpm", "npx", "npm", "yarn", "node"
  end
  test do
    system "#{bin}/snm", "--version"
  end
end
