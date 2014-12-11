module: termbox

define interface
  #include "termbox.h",
    equate: {"char *" => <c-string>},

    exclude: {
      "uint8_t",
      "int32_t"
    };

  function "tb_utf8_char_to_unicode",
    output-argument: 1;

  function "tb_utf8_unicode_to_char",
    output-argument: 1;
end interface;

