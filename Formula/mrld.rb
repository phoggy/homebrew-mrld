class Mrld < Formula
  version "0.1.11"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.11/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "d336516c6553a102ab4c7edd0fa0cdd4bb955b5eb06a69729e08c61f88c6ad81"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.11/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "959c943dec72a133863ec83faa0e423854dbc0b5dcdce6d1deaa533de68f4d93"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.11/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "6cfd766560336dcf86ae6a42827cc4e57fa9476a383f7653bec1a48f5164a360"
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
