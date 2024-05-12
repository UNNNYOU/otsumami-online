const colors = require("tailwindcss/colors");

module.exports = {
  content: [
    "./app/views/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
  ],
  plugins: [require("daisyui")],
  theme: {
    // カラー設定
    colors: {
      usuki: "#FAD689",
      gohun: "#FFFFFB",
      base: "#FFFAF2",
      sumi: "#1C1C1C",
      namari: "#787878",
    },
  },
};
