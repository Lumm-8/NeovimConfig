return {
    'akinsho/bufferline.nvim',
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup{
		options = {
		    indicator = {
		        icon = '| ',
			style = 'underline',
		    },

		    offsets = {
		        {
			    filetype = "NvimTree",
			    text     = "FIle Exploer",
			    text_align = "left",
			    separator  = true,
			}
		    },
		}
	}
    end
}
