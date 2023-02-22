# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chglog < Formula
  desc "chglog is a changelog management library and tool"
  homepage "https://github.com/goreleaser/chglog"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.2/chglog_Darwin_arm64.tar.gz"
      sha256 "88eb052b8efd3664df6f94b575e914471dae5110022d048a079c424189ae84ec"

      def install
        bin.install "chglog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.2/chglog_Darwin_x86_64.tar.gz"
      sha256 "a571e5a7f74b69c92c44190ebf0443510ed0ded51048bc32b12417d9667f93d3"

      def install
        bin.install "chglog"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.2/chglog_Linux_arm64.tar.gz"
      sha256 "5af66f6eaf76ed0d07d73e3233b3f37c772e9498c7000fd384d9180f87d962d1"

      def install
        bin.install "chglog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/chglog/releases/download/v0.4.2/chglog_Linux_x86_64.tar.gz"
      sha256 "7d7c0ee0845b9be58e360fb1b3fef608eea3247af087fbab4a0c7b13deccb4e9"

      def install
        bin.install "chglog"
      end
    end
  end

  test do
    system "#{bin}/chglog version"
  end
end
