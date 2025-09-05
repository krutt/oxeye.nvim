# oxeye.nvim

[![Neovim plugin](https://img.shields.io/badge/neovim-plugin-57A143?logo=neovim)](https://neovim.io)
[![Top](https://img.shields.io/github/languages/top/krutt/oxeye.nvim)](https://github.com/krutt/oxeye.nvim)
[![Languages](https://img.shields.io/github/languages/count/krutt/oxeye.nvim)](https://github.com/krutt/oxeye.nvim)
[![Last commit](https://img.shields.io/github/last-commit/krutt/oxeye.nvim/master)](https://github.com/krutt/oxeye.nvim)
![Oxeye Banner](static/oxeye-banner.svg)

## Installation

### Lazy

```lua
{
  'krutt/oxeye.nvim',
  config = function()
    require('oxeye').setup()
  end,
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter'
  },
}
```

### Packer

```lua
use {
  'krutt/oxeye.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'nvim-treesitter/nvim-treesitter'
  },
  setup = function()
    require('oxeye').setup()
  end,
}
```


## Project structure

```
oxeye.nvim/
│
├── lua/
│   └── oxeye/
│       └── init.lua         # Initiate oxeye using lspconfig for lspconfig
│
├── plugin/
│   ├── build.lua            # Check and install LSP server if not existed
│   └── oxeye.lua            # Verify lua dependencies before setup
│
├── LICENSE                  # Details of MIT License
└── README.md                # Descriptions and roadmap
```

## Acknowledgements

1. [อัญชัญ - Anchan](https://www.f0nt.com/release/anchan/) typeface by [Alisara Zilch](https://www.f0nt.com/author/zilch/)

## License

This project is licensed under the terms of the MIT license.
