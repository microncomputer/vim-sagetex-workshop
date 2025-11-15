# Makefile for Vim + SageTeX Workshop (Binder Version)
# Copyright (C) 2024 microncomputer
#
# This file is part of the Vim + SageTeX Workshop materials.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

# Usage: make [target]

# Variables
LATEX = pdflatex -interaction=nonstopmode
SAGE = sage
MAIN = vim_sagetex_workshop
QUICKREF = vim_latex_quickref
TEST = test_sagetex

# Default target
all: $(MAIN).pdf

# Main workshop document with SageTeX (with better error handling)
$(MAIN).pdf: $(MAIN).tex
	@echo "=== First LaTeX pass ==="
	-$(LATEX) $(MAIN).tex
	@echo "=== Running Sage ==="
	-$(SAGE) $(MAIN).sagetex.sage
	@echo "=== Final LaTeX pass ==="
	-$(LATEX) $(MAIN).tex
	@echo "=== Compilation complete! ==="

# Quick reference card (no SageTeX needed)
quickref: $(QUICKREF).tex
	$(LATEX) $(QUICKREF).tex

# Test document
test: $(TEST).tex
	-$(LATEX) $(TEST).tex
	-$(SAGE) $(TEST).sagetex.sage
	-$(LATEX) $(TEST).tex

# Quick compile without Sage (for testing)
quick: $(MAIN).tex
	$(LATEX) $(MAIN).tex

# Clean auxiliary files
clean:
	rm -f *.aux *.log *.out *.sagetex.* *.synctex.gz *.sage.py

# Clean everything including PDFs
distclean: clean
	rm -f *.pdf

# Check installation
check:
	@echo "Checking installation..."
	@which vim && echo "✓ Vim found" || echo "✗ Vim not found"
	@which sage && echo "✓ Sage found" || echo "✗ Sage not found"
	@which pdflatex && echo "✓ LaTeX found" || echo "✗ LaTeX not found"
	@sage -c "import sagetex" && echo "✓ SageTeX found" || echo "✗ SageTeX not found"

# Help target
help:
	@echo "Available targets:"
	@echo "  all       - Compile main workshop document (default)"
	@echo "  quickref  - Compile quick reference card"
	@echo "  test      - Compile test document"
	@echo "  quick     - Quick compile without Sage processing"
	@echo "  clean     - Remove auxiliary files"
	@echo "  distclean - Remove all generated files"
	@echo "  check     - Verify installation"
	@echo "  help      - Show this help message"

.PHONY: all quickref test quick clean distclean check help
