-- plugin/argute.lua --


if not pcall(require, 'lspconfig')
  or not pcall(require, 'nvim-treesitter.configs')
  or not pcall(require, 'plenary')
then
  return
end
