module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library termbox-test-suite
  use common-dylan;
  use io;
  use termbox;
  use testworks;

  export termbox-test-suite;
end library;

define module termbox-test-suite
  use common-dylan, exclude: { format-to-string };
  use format;
  use termbox;
  use streams, import: { <buffer> };
  use testworks;

  export termbox-test-suite;
end module;
