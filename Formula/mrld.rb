class Mrld < Formula
  version "0.1.12"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.12/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "b4c0272bc63189370f25ef7cbdf34024098e78fa53e4f9db86d986446db674df"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.12/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "515e0007eb33db378961e34b7ccb0f90d5864cc474465c9e381a686517bbbba4"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.12/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "81d8b7f4ba8ccb7d6b67bf7e59ad7a95f22217831546997b4cf2321b9990a5e9"
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
