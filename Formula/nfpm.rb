# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.26.0/nfpm_2.26.0_Darwin_x86_64.tar.gz"
      sha256 "87a2b62cda200b60d1f176e61b64f111d8936fba4f57fe317bb61456d0235563"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.26.0/nfpm_2.26.0_Darwin_arm64.tar.gz"
      sha256 "208ffa23d2b4583c520765e9e154eab002439a7a78df25d7ea0943305ab60d6d"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.26.0/nfpm_2.26.0_Linux_arm64.tar.gz"
      sha256 "12770edab22b0d9851562b47307ca0c4ca6167f48984dff0928f3918de3c59e6"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.26.0/nfpm_2.26.0_Linux_x86_64.tar.gz"
      sha256 "06803dc5e61423a6ddf18ab2a3d5c1e207fd4ca87e550ea1ce0a0120488f413f"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
