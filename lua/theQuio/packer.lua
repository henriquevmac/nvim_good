-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    -- Packer


    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    -- use 'romgrk/barbar.nvim'


end)
