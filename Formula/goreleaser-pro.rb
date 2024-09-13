# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserPro < Formula
  desc "Deliver Go binaries as fast and easily as possible."
  homepage "https://goreleaser.com"
  version "2.3.1-pro"
  license "Copyright Becker Software LTDA"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.3.1-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
      sha256 "eac02532451e225bbf8f8adf535e197c1fed415b02ba832a0cbb21b46c009d94"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
    on_arm do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.3.1-pro/goreleaser-pro_Darwin_arm64.tar.gz"
      sha256 "cb26c954036c5f8fdbaadb871610bcb441359ad246deb5c262f97b7c329412a8"

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
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.3.1-pro/goreleaser-pro_Linux_x86_64.tar.gz"
        sha256 "f6c3b0cc517b4eb3c5cb8e331d6382a6ee1744714848b4e257af17c11593a8c9"

        def install
          bin.install "goreleaser"
          bash_completion.install "completions/goreleaser.bash" => "goreleaser"
          zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
          fish_completion.install "completions/goreleaser.fish"
          man1.install "manpages/goreleaser.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.3.1-pro/goreleaser-pro_Linux_arm64.tar.gz"
        sha256 "fedfb3dd80ea0dbcf14e6139401f85476bb03255576b17091f9c338f4b97d43f"

        def install
          bin.install "goreleaser"
          bash_completion.install "completions/goreleaser.bash" => "goreleaser"
          zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
          fish_completion.install "completions/goreleaser.fish"
          man1.install "manpages/goreleaser.1.gz"
        end
      end
    end
  end

  conflicts_with "goreleaser-pro"

  test do
    system "#{bin}/goreleaser -v"
  end
end
