require('text-to-colorscheme').setup {
  ai = {
     openai_api_key = os.getenv("OPENAI_API_KEY"),
     gpt_model = "gpt-3.5-turbo-0613",
  },

hex_palettes = {

   {
      name = "red baron",
      background_mode = "dark",
      background = "#1c1c1c",
      foreground = "#f7f7f7",
      accents = {
         "#ff0000",
         "#ff4d00",
         "#ff9900",
         "#ffcc00",
         "#ffea00",
         "#ffff00",
         "#97d900",
      },
   },


   {
      name = "Royal Marine Bloo",
      background_mode = "dark",
      background = "#0c1a24",
      foreground = "#c2d1d9",
      accents = {
         "#1f6b8d",
         "#3a8fb7",
         "#5db5d7",
         "#8ccfe1",
         "#b8e3e9",
         "#e0f4f7",
         "#f7fbfd",
      },
   },
},

default_palette = "red baron",

}
