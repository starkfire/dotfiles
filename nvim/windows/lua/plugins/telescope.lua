return {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    module = 'telescope',
    config = function()
        require('telescope').setup()
    end
}
