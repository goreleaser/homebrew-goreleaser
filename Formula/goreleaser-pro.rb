# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoreleaserPro < Formula
  desc "Deliver Go binaries as fast and easily as possible."
  homepage "https://goreleaser.com"
  version "2.4.0-pro"
  license "Copyright Becker Software LTDA"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.0-pro/goreleaser-pro_Darwin_x86_64.tar.gz"
      sha256 "b0502edd973311e700ecc2d009e10bcd6446f06bf8cc76415fc12e758f9bf8f3"

      def install
        bin.install "goreleaser"
        bash_completion.install "completions/goreleaser.bash" => "goreleaser"
        zsh_completion.install "completions/goreleaser.zsh" => "_goreleaser"
        fish_completion.install "completions/goreleaser.fish"
        man1.install "manpages/goreleaser.1.gz"
      end
    end
    on_arm do
      url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.0-pro/goreleaser-pro_Darwin_arm64.tar.gz"
      sha256 "8d37bbf5106275bb94d30a11e84d68d31304c26c73b5fc3b384eb074c87b35a4"

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
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.0-pro/goreleaser-pro_Linux_x86_64.tar.gz"
        sha256 "1cae7c527c26d16c5214c25930bf659478d7e051756c7feb2d97f2e90ee6a058"

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
        url "https://github.com/goreleaser/goreleaser-pro/releases/download/v2.4.0-pro/goreleaser-pro_Linux_arm64.tar.gz"
        sha256 "0c83e632b4c83195a33c90db7a2d2c319597a800e473aab5778ba50979bef032"

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
