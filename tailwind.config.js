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
      torinoko: "#DAC9A6",
      kachi: "#08192D",
      kuro: "#080808",
      shironeri: "#FCFAF2",
    },
    extend: {
      keyframes: {
        "fade-in-left": {
          "0%": {
            opacity: 0,
            transform: "translate3d(-100%, 0, 0)",
          },
          "100%": {
            opacity: 1,
            transform: "translate3d(0, 0, 0)",
          },
        },
        "fade-in-right": {
          "0%": {
            opacity: 0,
            transform: "translate3d(100%, 0, 0)",
          },
          "100%": {
            opacity: 1,
            transform: "translate3d(0, 0, 0)",
          },
        },
      },
      animation: {
        fadeinright: "fade-in-right 1s ease-in-out 0.25s 1",
        fadeinleft: "fade-in-left 1s ease-in-out 0.25s 1",
      },
    },
  },
};
