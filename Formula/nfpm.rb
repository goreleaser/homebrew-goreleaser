# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is not FPM"
  homepage "https://github.com/goreleaser/nfpm"
  version "1.0.0-beta1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/nfpm/releases/download/v1.0.0-beta1/nfpm_1.0.0-beta1_Darwin_x86_64.tar.gz"
    sha256 "0c7c146210a41861f61b032b036b5efdf3b0798500e81b81b5752ad1a8b92daf"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v1.0.0-beta1/nfpm_1.0.0-beta1_Linux_x86_64.tar.gz"
      sha256 "642c5de7a0a790a3a1a9013610508e1ec5fc98a29dc0a17c7783d9b2359a99f9"
    end
  end

  def install
    bin.install "nfpm"
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
