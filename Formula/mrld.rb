class Mrld < Formula
  version "0.1.14"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.14/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "64e0fcc920a02e191ca08dbd633e943e0d3aabb8383637c838f1cbe3c1b3da11"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.14/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "31e738aeaeedbe9ea3f95bdd65b87ddcd8bb12eb7c1b889146dc7e16ad9b2ee7"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.14/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f257e900236341605e3e1bd03a150ac462cf01fe5dd65c4bd13d976becaa969d"
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
