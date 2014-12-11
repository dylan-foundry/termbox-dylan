module: termbox-test-suite
synopsis: Test suite for the termbox library.
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define test termbox-test ()
end test termbox-test;

define suite termbox-test-suite ()
  test termbox-test;
end suite;
