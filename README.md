## Why

To learn lua language.

> Lua (/ˈluːə/ LOO-ə; from Portuguese: lua [ˈlu.(w)ɐ] meaning moon) is a lightweight, high-level, multi-paradigm programming language designed primarily for embedded use in applications.[3] Lua is cross-platform, since the interpreter of compiled bytecode is written in ANSI C,[4] and Lua has a relatively simple C API to embed it into applications.[5]

[Lua (programming language)](<https://en.wikipedia.org/wiki/Lua_(programming_language)>)

## Installation

```sh
# brew
brew install lua
brew install luarocks
brew install luajit
```

if align luarocks and lua version.  
[lua - How do install libraries for both Lua5.2 and 5.1 using Luarocks? - Stack Overflow](https://stackoverflow.com/questions/20321560/how-do-install-libraries-for-both-lua5-2-and-5-1-using-luarocks)

```sh
./configure --lua-version=5.1 --versioned-rocks-dir
make build
sudo make install
```

Why install lua version 5.1 ?  
Now lua version 5.1 has luaJIT fully compatibility.

> LuaJIT is fully upwards-compatible with Lua 5.1. It supports all standard Lua library functions and the full set of Lua/C API functions.
> https://luajit.org/extensions.html

## Execute

```bash
lua main.lua $args
```

## Development

### LSP · Formatter

```sh
brew install lua-format
brew install
```

- formatter: [GitHub - Koihik/LuaFormatter: Code formatter for Lua](https://github.com/Koihik/LuaFormatter)
- LSP: [GitHub - josa42/coc-lua: Lua language server extension using lua-lsp for coc.nvim.](https://github.com/josa42/coc-lua)

### LSP setup with coc.nvim example

**coc-setting.json**

```sh
# :CocInstall coc-diagnostic
"diagnostic-languageserver.formatFiletypes": {
  "lua": "lua-format",
}
```

**~/.config/nvim/init.vim**

```vim
# :CocInstall coc-lua
let g:coc_global_extensions = [
      \, 'coc-lua'
      \, ]
```

### Openresty

```sh
brew install pcre openssl curl
brew install openresity
brew unlink nginx
brew link openrestity

// exmaple
export PATH=/usr/local/Cellar/openresty/1.19.3.1_1/nginx/sbin:$PATH
```

### Refrences

- [Lua 5.1 Reference Manual](lua.org/manual/5.1/index.html)
- [Lua 5.1 リァレンスマニュアル](http://milkpot.sakura.ne.jp/lua/lua51_manual_ja.html)
- [lua-users.org wiki Sample Code](http://lua-users.org/wiki/SampleCode)
- [お気楽 Lua プログラミング超入門](http://www.nct9.ne.jp/m_hiroi/light/lua05.html)
