class Mrld < Formula
  version "0.1.2"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.2/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "5651a2f6f7e663d197bab6964e1d34a3a2960ba1474edb8b3a37b837d16bd0ec"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.2/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "ee4dbb88051c843b55352cae88eba70df77b08f0ff556ffab709f694a957d2b2"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.2/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "254f42331fb9ee1e9b6766aa1fc878f0e0d8480aec7833afaa4cb8513cd4578c"
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
