# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserProAT1 < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "1.23.0-pro"
  license "Copyright Becker Software LTDA"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.23.0-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
      sha256 "53073a6d4e78cd58b4fedcb419def60d47e395336baa2667a351be3dfc89ba2b"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.23.0-pro/goreleaser-pro_Darwin_arm64.tar.gz"
      sha256 "e0d137fbd433701232380819442d55f8bafaabb1fc77082615c0407e1c2e99a2"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.23.0-pro/goreleaser-pro_Linux_arm64.tar.gz"
      sha256 "39c4fde154d48c5468ac12f454e2fc7ed359256ef8647e5f55305219286a52c2"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v1.23.0-pro/goreleaser-pro_Linux_x86_64.tar.gz"
      sha256 "bd5bd23b6a481897253c08df2dbcf302c355a5fe51214b6611af67a742c4a9aa"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
  end

  conflicts_with "goreleaser-pro"

  test do
    system "#{bin}/goreleaser -v"
  end
end
