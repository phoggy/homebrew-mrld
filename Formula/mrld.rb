class Mrld < Formula
  version "0.1.10"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.10/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "18dd0f01193cb778aea731e8771f54dcd8f7187138e47fece3d4820383ba488e"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.10/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "f6409eac82cc9b44c98ad5741b74f1edb88c6babb1d7ada73f5e06e25d221423"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.10/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "2e88574e5359c6366734509b585aa008311b9c8afea1103dedc86568b3fb3e19"
    end
  end

  def install
    on_macos do
      on_arm do
        bin.install "mrld"
      end
    end
    on_macos do
      on_intel do
        bin.install "mrld"
      end
    end
    on_linux do
      on_intel do
        bin.install "mrld"
      end
    end

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install *leftover_contents unless leftover_contents.empty?
  end
end
