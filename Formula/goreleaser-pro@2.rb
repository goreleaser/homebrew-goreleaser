# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserProAT2 < Formula
  desc "Deliver Go binaries as fast and easily as possible."
  homepage "https://goreleaser.com"
  version "2.4.6-pro"
  license "Copyright Becker Software LTDA"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.6-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
      sha256 "14b0ed1bf545c41a50e5f209555826033717d224f769400bd66c57dc55db0b59"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
    on_arm do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.6-pro/goreleaser-pro_Darwin_arm64.tar.gz"
      sha256 "cc5c662990b6371bc18b473763c2a96cbf6420b648983426b9a414f259d8ce39"

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
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.6-pro/goreleaser-pro_Linux_x86_64.tar.gz"
        sha256 "3a7b757d2d92a882af7da5088293c89a664ef62dd4f367def382938eae2bb4d2"

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
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.6-pro/goreleaser-pro_Linux_arm64.tar.gz"
        sha256 "af1d3da4e445156190030594b3200b72095b2b82f830e3bcdaf68988e3436a04"

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
