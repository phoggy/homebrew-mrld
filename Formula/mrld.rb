class Mrld < Formula
  version "0.1.6"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.6/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "ea2dfab45c36a3d424c8b020f20e9ca5ee5cad789238d8e7b23ba96dfd5a3a27"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.6/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "8ecac455664e71990a1c806c15ac04fb06d5cfdeee57b9623d05e1730bec1525"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.6/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "271951ad9a56e3bb58502cee9aa01da0e29fbbe057304e2b238545ce2aef9f05"
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
