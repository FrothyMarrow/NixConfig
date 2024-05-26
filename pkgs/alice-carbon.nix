{
  stdenv,
  fetchFromGitHub,
  vscode-utils,
  nodejs,
  vsce,
  ...
}: let
  extName = "alice-carbon";
  extVersion = "1.1.2";
  extvsix = stdenv.mkDerivation {
    name = "vscode-extension-${extName}";
    version = extVersion;
    src = fetchFromGitHub {
      owner = "frothymarrow";
      repo = "alice-carbon";
      rev = "53248d6";
      sha256 = "sha256-WI4IOhFB+Emyh61HbNUrRSj+KTQonygj+mQbIkMoSpU=";
    };

    nativeBuildInputs = [nodejs];

    buildPhase = ''
      ${vsce}/bin/vsce package -o ${extName}-${extVersion}.zip
    '';

    installPhase = ''
      mkdir -p $out/share/vscode/extensions
      mv ${extName}-${extVersion}.zip $out/share/vscode/extensions
    '';
  };
in
  vscode-utils.buildVscodeExtension {
    name = "alice-carbon";
    src = "${extvsix}/share/vscode/extensions/${extName}-${extVersion}.zip";
    version = extVersion;
    vscodeExtPublisher = "frothymarrow";
    vscodeExtName = "alice-carbon";
    vscodeExtUniqueId = "frothymarrow.alice-carbon";
  }
