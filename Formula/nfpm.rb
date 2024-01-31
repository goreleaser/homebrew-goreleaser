# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is a simple, 0-dependencies, deb, rpm and apk packager."
  homepage "https://nfpm.goreleaser.com"
  version "2.35.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.35.3/nfpm_2.35.3_Darwin_arm64.tar.gz"
      sha256 "38f3b9486350f4a73a2568fc873917021156d5596a775b11176c0a74e1bb3f3f"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.35.3/nfpm_2.35.3_Darwin_x86_64.tar.gz"
      sha256 "d8a99276e19668f1c6d10d652cce50cc92178d6ad6df9175a32addef1c79865a"

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
      url "https://github.com/goreleaser/nfpm/releases/download/v2.35.3/nfpm_2.35.3_Linux_arm64.tar.gz"
      sha256 "a1fe2fe46a959aef2c81f3b0da6ee76681c674b3db7e6c06b0ddacdb09f46e09"

      def install
        bin.install "nfpm"
        bash_completion.install "completions/nfpm.bash" => "nfpm"
        zsh_completion.install "completions/nfpm.zsh" => "_nfpm"
        fish_completion.install "completions/nfpm.fish"
        man1.install "manpages/nfpm.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v2.35.3/nfpm_2.35.3_Linux_x86_64.tar.gz"
      sha256 "188de11e1e852baf0644e32ecd0d6664428e467d9c9b5ffecad99ab9c58f3cf0"

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
