# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.11.2/nfpm_2.11.2_Darwin_arm64.tar.gz"
      sha256 "39ba10df310933346ed64b3920fbbabbaa7319495d9437de497b63381bfd2366"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.11.2/nfpm_2.11.2_Darwin_x86_64.tar.gz"
      sha256 "3adce39e001cc1046c399109ee6bf582cab10c5f5b8aecd7277cd83c3037a5a7"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.11.2/nfpm_2.11.2_Linux_x86_64.tar.gz"
      sha256 "7c279b30f720087f9780c2943b8618333437bc80ccf3d01e3964f6d4382d1629"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.11.2/nfpm_2.11.2_Linux_arm64.tar.gz"
      sha256 "877016c98902cebe071145402b0e3cb0c4d98d53df8a8abd084cb0f6cf379758"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
      end
    end
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
