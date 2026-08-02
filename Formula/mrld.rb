class Mrld < Formula
  version "0.1.8"
  on_macos do
    on_arm do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.8/mrld-aarch64-apple-darwin.tar.xz"
      sha256 "47cbf3ddccb07233333ddf90f2bab9a11b0c196872090a62a49f9dcedd813f18"
    end
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.8/mrld-x86_64-apple-darwin.tar.xz"
      sha256 "137d5c9f0deb625839484ba49fc69d9ef030fb25d510c6cac53b88f32e8ecf33"
    end
  end
  on_linux do
    on_intel do
      url "https://github.com/phoggy/mrld/releases/download/v0.1.8/mrld-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cecba3028a21a669ed60c1076b13702853f7cb63d4c0f336ec73220d8af31f40"
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
