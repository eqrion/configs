#!/bin/bash
rm -f tags
ctags --languages=C++ -u -R gfx/
ctags --languages=C++ -u -a -R dom/
ctags --languages=C++ -u -a -R layout/
ctags --languages=C++ -u -a -R widget/
ctags --languages=C++ -u -a -R view/
ctags --languages=C++ -a -R toolkit/
