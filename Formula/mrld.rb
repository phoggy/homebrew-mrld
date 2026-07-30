class Mrld < Formula
  version "0.1.5"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.5/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "69b6897c5106b52b59b4e1a7ec579f22d64f1a28afd1183f5af0210fee12e88e"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.5/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "a13eee8f356e624ee03a1eccfc471cad9b1df03c5f7d1f8296db96e96c587518"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.5/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "ccda4bfaf7648a5758c62f40f9abe5cf1d3d2bce1a5104bd63027ab84554585d"
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
