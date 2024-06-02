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
  extPublisher = "frothymarrow";
  extvsix = stdenv.mkDerivation {
    name = "vscode-extension-${extName}";
    version = extVersion;
    src = fetchFromGitHub {
      owner = extPublisher;
      repo = extName;
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
    name = extName;
    src = "${extvsix}/share/vscode/extensions/${extName}-${extVersion}.zip";
    version = extVersion;
    vscodeExtPublisher = extPublisher;
    vscodeExtName = extName;
    vscodeExtUniqueId = "${extPublisher}.${extName}";
  }
