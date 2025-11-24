# Vim + SageTeX Interactive Workshop

This project is not complete or ready for use. I am building this with the assistance of claude AI.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/microncomputer/vim-sagetex-workshop/HEAD?urlpath=lab)

## 🚀 Instant Access - No Installation Required!

**Click the "launch binder" button above** to start the workshop environment in your browser. You'll get a complete Linux system with Vim, SageMath, and LaTeX all pre-installed and configured.

## 📚 What is this Workshop?

This is an interactive workshop that teaches mathematics students how to:
- Use Vim for efficient LaTeX editing
- Integrate computational mathematics using SageTeX
- Combine both tools for mathematical document creation

## 🎯 For Workshop Participants

### Quick Start (After Clicking the Binder Badge)
1. Wait for environment to load (2-3 minutes first time)
2. Click **File → New → Terminal** (or the Terminal icon)
3. In the terminal, type:
   ```bash
   cd workshop
   vim vim_sagetex_workshop.tex
   ```
4. Follow the exercises in the document!

### Essential Vim Commands for the Workshop
| Command | What it does |
|---------|-------------|
| `i` | Enter insert mode (start typing) |
| `Esc` | Exit insert mode |
| `:w` | Save file |
| `:q` | Quit vim |
| `:wq` | Save and quit |
| `dd` | Delete current line |
| `yy` | Copy current line |
| `p` | Paste |
| `/text` | Search for "text" |
| `u` | Undo |

### Compiling Your Document
- **In Vim:** Press `F6` for full compilation with SageTeX
- **In Terminal:** Run `make all`

## 📁 Workshop Files

- **`vim_sagetex_workshop.tex`** - Main workshop document with exercises
- **`vim_latex_quickref.tex`** - Quick reference card for vim commands
- **`test_sagetex.tex`** - Simple test file to verify setup
- **`WELCOME.txt`** - Quick start guide

## 🛠️ For Instructors

### Setting Up Your Own Workshop

1. **Fork this repository** or create your own
2. **Edit `vim_sagetex_workshop.tex`** to customize exercises
3. **Update this README** - change microncomputer and vim-sagetex-workshop in the badge
4. **Go to** [mybinder.org](https://mybinder.org) and enter your repository URL
5. **Share** the generated Binder link with participants

### Files Structure
```
.
├── environment.yml          # Binder configuration (software to install)
├── postBuild               # Setup script (runs after installation)
├── Makefile                # Compilation shortcuts
├── vim_sagetex_workshop.tex   # Main workshop document
├── vim_latex_quickref.tex     # Quick reference
└── README.md               # This file
```

### Pre-Workshop Checklist
- [ ] Test the Binder link 24 hours before
- [ ] Have backup plan (local files or split approach)
- [ ] Print quick reference cards
- [ ] Test with 1-2 volunteers if possible

## 💻 Running Locally (Optional)

If you prefer to run locally instead of using Binder:

### Ubuntu/Debian
```bash
sudo apt-get update
sudo apt-get install vim sagemath texlive-full
```

### macOS
```bash
brew install vim
brew install --cask sage
brew install --cask mactex
```

### Windows
- Install [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install)
- Follow Ubuntu instructions above

## 🔧 Troubleshooting

### Binder Issues
- **Slow to load:** First launch takes 3-5 minutes (builds environment)
- **Connection lost:** Your work is temporary - download files before closing
- **Can't see PDF:** In file browser, navigate to the PDF and double-click

### Vim Issues
- **Stuck in vim:** Press `Esc` then type `:q!` to force quit
- **Can't type:** Press `i` to enter insert mode
- **Lost cursor:** Press `Esc` then `gg` to go to top of file

### Compilation Issues
- **SageTeX errors:** Check the `.sagetex.sage` file for Python syntax errors
- **PDF not updating:** Make sure to run full compilation with `make all`

## 📖 Learning Resources

- [Vim Interactive Tutorial](https://www.openvim.com/)
- [SageMath Documentation](https://doc.sagemath.org/)
- [SageTeX Guide](https://github.com/sagemath/sagetex)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)

## 🤝 Contributing

Feel free to fork this repository and adapt it for your own workshops! Pull requests with improvements are welcome.

## 📄 License

This workshop material is free software licensed under the [GNU General Public License v3.0](LICENSE). 

You are free to:
- Use the material for any purpose
- Modify and adapt it for your needs
- Share it with others
- Use it commercially

Under the condition that any modifications or derivatives remain under the same GPLv3 license, ensuring educational materials stay free and open source.

---

**Questions during workshop?** Raise your hand or use the chat!

**Technical issues?** Try refreshing the browser or restarting the kernel (Kernel → Restart).
