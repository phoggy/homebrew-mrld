class Mrld < Formula
  version "0.1.1"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.1/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "b570948fd9406a1199c3fbe875f67616cc597195ddc6fa6de9140c7504afeed1"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.1/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "15e2b8a8ff767287937e218e615566d2d9b15cb9aa6a7bc77ec3731be6edb4f5"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.1/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "00d4803526557bb728950d6aed35967ef22cd6ad772fa04557f8c98b100b8dc5"
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
