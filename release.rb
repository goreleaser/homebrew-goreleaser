class Release < Formula
  desc "Builds go binaries for several platforms, creates a github release and then push it to a custom homebrew repository"
  homepage ""
  url "https://github.com/goreleaser/releaser/releases/download/v0.0.6/release_Darwin_x86_64.tar.gz"
  head "https://github.com/goreleaser/releaser.git"

  def install
    bin.install "release"
  end
end
