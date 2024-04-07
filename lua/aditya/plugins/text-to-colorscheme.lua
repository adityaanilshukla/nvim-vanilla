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


   {
      name = "Roscosmos",
      background_mode = "dark",
      background = "#0d0d0d",
      foreground = "#ffffff",
      accents = {
         "#ff0000",
         "#007fff",
         "#ff8c00",
         "#ffd700",
         "#00d900",
         "#4b0082",
         "#9400d3",
      },
   },


   {
      name = "Only Murders In the Building",
      background_mode = "dark",
      background = "#1a1a1a",
      foreground = "#ffffff",
      accents = {
         "#ff0000",
         "#ff9900",
         "#ffff00",
         "#00d900",
         "#00ffff",
         "#0000ff",
         "#ff00ff",
      },
   },

default_palette = "red baron",

	}
}
