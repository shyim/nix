self: super: {
  neovim = super.neovim.override {
    configure = {
      customRC = ''
        set encoding=utf-8
        set tabstop=4
        set shiftwidth=4
        set autoindent

        set backupdir=~/.cache
        set directory=~/.cache
              '';
      packages.myVimPackage = with super.vimPlugins; {
        start = [ vim-nix syntastic nerdtree ];
        opt = [ ];
      };
    };
  };
  php74 = super.php74.overrideAttrs (oldAttr: {
    buildInputs = oldAttr.buildInputs ++ [ super.libffi ];
    configureFlags = oldAttr.configureFlags ++ [ "--with-ffi" ];

    src = super.fetchurl {
      url = "https://www.php.net/distributions/php-7.4.2.tar.bz2";
      sha256 = "05p8z0ld058yjanxaphy3ka20hn7x7d6nak5sm782w4wprs9k402";
    };
  });
}
