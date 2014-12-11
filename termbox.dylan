module: termbox

define constant <uint32-t> = <C-unsigned-int>;

define constant <uint16-t> = <C-unsigned-short>;

define C-struct <tb-cell>
  slot tb-cell$ch :: <C-unsigned-int>;
  slot tb-cell$fg :: <C-unsigned-short>;
  slot tb-cell$bg :: <C-unsigned-short>;
end;

define C-struct <tb-event>
  slot tb-event$type :: <C-unsigned-char>;
  slot tb-event$mod :: <C-unsigned-char>;
  slot tb-event$key :: <C-unsigned-short>;
  slot tb-event$ch :: <C-unsigned-int>;
  slot tb-event$w :: <C-signed-int>;
  slot tb-event$h :: <C-signed-int>;
end;

define C-function tb-init
  result res :: <C-signed-int>;
  c-name: "tb_init";
end;

define C-function tb-shutdown
  c-name: "tb_shutdown";
end;

define C-function tb-width
  result res :: <C-signed-int>;
  c-name: "tb_width";
end;

define C-function tb-height
  result res :: <C-signed-int>;
  c-name: "tb_height";
end;

define C-function tb-clear
  c-name: "tb_clear";
end;

define C-function tb-set-clear-attributes
  input parameter fg_ :: <uint16-t>;
  input parameter bg_ :: <uint16-t>;
  c-name: "tb_set_clear_attributes";
end;

define C-function tb-present
  c-name: "tb_present";
end;

define C-function tb-set-cursor
  input parameter cx_ :: <C-signed-int>;
  input parameter cy_ :: <C-signed-int>;
  c-name: "tb_set_cursor";
end;

define C-pointer-type <tb-cell*> => <tb-cell>;
define C-function tb-put-cell
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  input parameter cell_ :: <tb-cell*>;
  c-name: "tb_put_cell";
end;

define C-function tb-change-cell
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  input parameter ch_ :: <uint32-t>;
  input parameter fg_ :: <uint16-t>;
  input parameter bg_ :: <uint16-t>;
  c-name: "tb_change_cell";
end;

define C-function tb-blit
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  input parameter cells_ :: <tb-cell*>;
  c-name: "tb_blit";
end;

define C-function tb-cell-buffer
  result res :: <tb-cell*>;
  c-name: "tb_cell_buffer";
end;

define C-function tb-select-input-mode
  input parameter mode_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "tb_select_input_mode";
end;

define C-function tb-select-output-mode
  input parameter mode_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "tb_select_output_mode";
end;

define C-pointer-type <tb-event*> => <tb-event>;
define C-function tb-peek-event
  input parameter event_ :: <tb-event*>;
  input parameter timeout_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "tb_peek_event";
end;

define C-function tb-poll-event
  input parameter event_ :: <tb-event*>;
  result res :: <C-signed-int>;
  c-name: "tb_poll_event";
end;

define C-function tb-utf8-char-length
  input parameter c_ :: <C-signed-char>;
  result res :: <C-signed-int>;
  c-name: "tb_utf8_char_length";
end;

define C-pointer-type <uint32-t*> => <uint32-t>;
define C-pointer-type <c-string> => <C-signed-char>;
define C-function tb-utf8-char-to-unicode
  output parameter out_ :: <uint32-t*>;
  input parameter c_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "tb_utf8_char_to_unicode";
end;

define C-function tb-utf8-unicode-to-char
  output parameter out_ :: <c-string>;
  input parameter c_ :: <uint32-t>;
  result res :: <C-signed-int>;
  c-name: "tb_utf8_unicode_to_char";
end;

define constant $TB-KEY-F1 = 65535;

define constant $TB-KEY-F2 = 65534;

define constant $TB-KEY-F3 = 65533;

define constant $TB-KEY-F4 = 65532;

define constant $TB-KEY-F5 = 65531;

define constant $TB-KEY-F6 = 65530;

define constant $TB-KEY-F7 = 65529;

define constant $TB-KEY-F8 = 65528;

define constant $TB-KEY-F9 = 65527;

define constant $TB-KEY-F10 = 65526;

define constant $TB-KEY-F11 = 65525;

define constant $TB-KEY-F12 = 65524;

define constant $TB-KEY-INSERT = 65523;

define constant $TB-KEY-DELETE = 65522;

define constant $TB-KEY-HOME = 65521;

define constant $TB-KEY-END = 65520;

define constant $TB-KEY-PGUP = 65519;

define constant $TB-KEY-PGDN = 65518;

define constant $TB-KEY-ARROW-UP = 65517;

define constant $TB-KEY-ARROW-DOWN = 65516;

define constant $TB-KEY-ARROW-LEFT = 65515;

define constant $TB-KEY-ARROW-RIGHT = 65514;

define constant $TB-KEY-CTRL-TILDE = 0;

define constant $TB-KEY-CTRL-2 = 0;

define constant $TB-KEY-CTRL-A = 1;

define constant $TB-KEY-CTRL-B = 2;

define constant $TB-KEY-CTRL-C = 3;

define constant $TB-KEY-CTRL-D = 4;

define constant $TB-KEY-CTRL-E = 5;

define constant $TB-KEY-CTRL-F = 6;

define constant $TB-KEY-CTRL-G = 7;

define constant $TB-KEY-BACKSPACE = 8;

define constant $TB-KEY-CTRL-H = 8;

define constant $TB-KEY-TAB = 9;

define constant $TB-KEY-CTRL-I = 9;

define constant $TB-KEY-CTRL-J = 10;

define constant $TB-KEY-CTRL-K = 11;

define constant $TB-KEY-CTRL-L = 12;

define constant $TB-KEY-ENTER = 13;

define constant $TB-KEY-CTRL-M = 13;

define constant $TB-KEY-CTRL-N = 14;

define constant $TB-KEY-CTRL-O = 15;

define constant $TB-KEY-CTRL-P = 16;

define constant $TB-KEY-CTRL-Q = 17;

define constant $TB-KEY-CTRL-R = 18;

define constant $TB-KEY-CTRL-S = 19;

define constant $TB-KEY-CTRL-T = 20;

define constant $TB-KEY-CTRL-U = 21;

define constant $TB-KEY-CTRL-V = 22;

define constant $TB-KEY-CTRL-W = 23;

define constant $TB-KEY-CTRL-X = 24;

define constant $TB-KEY-CTRL-Y = 25;

define constant $TB-KEY-CTRL-Z = 26;

define constant $TB-KEY-ESC = 27;

define constant $TB-KEY-CTRL-LSQ-BRACKET = 27;

define constant $TB-KEY-CTRL-3 = 27;

define constant $TB-KEY-CTRL-4 = 28;

define constant $TB-KEY-CTRL-BACKSLASH = 28;

define constant $TB-KEY-CTRL-5 = 29;

define constant $TB-KEY-CTRL-RSQ-BRACKET = 29;

define constant $TB-KEY-CTRL-6 = 30;

define constant $TB-KEY-CTRL-7 = 31;

define constant $TB-KEY-CTRL-SLASH = 31;

define constant $TB-KEY-CTRL-UNDERSCORE = 31;

define constant $TB-KEY-SPACE = 32;

define constant $TB-KEY-BACKSPACE2 = 127;

define constant $TB-KEY-CTRL-8 = 127;

define constant $TB-MOD-ALT = 1;

define constant $TB-DEFAULT = 0;

define constant $TB-BLACK = 1;

define constant $TB-RED = 2;

define constant $TB-GREEN = 3;

define constant $TB-YELLOW = 4;

define constant $TB-BLUE = 5;

define constant $TB-MAGENTA = 6;

define constant $TB-CYAN = 7;

define constant $TB-WHITE = 8;

define constant $TB-BOLD = 256;

define constant $TB-UNDERLINE = 512;

define constant $TB-REVERSE = 1024;

define constant $TB-EVENT-KEY = 1;

define constant $TB-EVENT-RESIZE = 2;

define constant $TB-EUNSUPPORTED-TERMINAL = -1;

define constant $TB-EFAILED-TO-OPEN-TTY = -2;

define constant $TB-EPIPE-TRAP-ERROR = -3;

define constant $TB-HIDE-CURSOR = -1;

define constant $TB-INPUT-CURRENT = 0;

define constant $TB-INPUT-ESC = 1;

define constant $TB-INPUT-ALT = 2;

define constant $TB-OUTPUT-CURRENT = 0;

define constant $TB-OUTPUT-NORMAL = 1;

define constant $TB-OUTPUT-256 = 2;

define constant $TB-OUTPUT-216 = 3;

define constant $TB-OUTPUT-GRAYSCALE = 4;

define constant $TB-EOF = -1;

