class Mrld < Formula
  version "0.1.9"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.9/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "4f7ca428e8d9afd319f6d42f40108d9ad92d015dab8e4ab973fca8aea0913a75"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.9/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "937b5761d37c8bab6fc6524c364a2a1a370f142d10df6724ee495f802bac5412"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.9/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "586461538a622f395692618c0b50de78c6c6420a8537bb975e1f33a4cb836ed3"
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
