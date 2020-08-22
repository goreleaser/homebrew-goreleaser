# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.142.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.142.0/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "d3153bf3bdf1b943682a2def02852a3377ec63813be0c1c034e1e92d58494393"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.142.0/goreleaser_Linux_x86_64.tar.gz"
      sha256 "eb61a73f5b0947abb8d85074b7bcfd06460f869f3c5708c73800bd57668e55a2"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.142.0/goreleaser_Linux_arm64.tar.gz"
        sha256 "5b18b803b07423b3873c9e04de8b8de62b7d5dec6938b368b771d66a6aee833c"
      else
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.142.0/goreleaser_Linux_armv6.tar.gz"
        sha256 "6997ac9a8da0bf21509da5bfdbb8982ef725d4829eb0f7286843de37d3f2b271"
      end
    end
  end
  
  depends_on "go"

  def install
    bin.install "goreleaser"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
