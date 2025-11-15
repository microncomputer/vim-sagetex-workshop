# 📋 Step-by-Step Deployment Guide

## Setting Up Your Vim + SageTeX Workshop on Binder

### Step 1: Create GitHub Account (if needed)
1. Go to https://github.com/signup
2. Choose a username (e.g., `micron-math`)
3. Verify email
4. Select free account

### Step 2: Create New Repository
1. Click the **+** icon in top-right corner
2. Select **"New repository"**
3. Fill in:
   - Repository name: `vim-sagetex-workshop`
   - Description: "Interactive workshop for Vim and SageTeX"
   - Select **Public** (required for Binder)
   - DON'T initialize with README (we have our own)
4. Click **"Create repository"**

### Step 3: Upload Workshop Files
1. On the repository page, click **"uploading an existing file"**
2. Drag and drop these files from your downloads:
   ```
   environment.yml
   postBuild
   Makefile
   README.md
   .gitignore
   vim_sagetex_workshop.tex
   vim_latex_quickref.tex
   instructor_solutions.tex
   ```
3. Write commit message: "Initial workshop setup"
4. Click **"Commit changes"**

### Step 4: Update the README
1. Click on `README.md` in your repository
2. Click the pencil icon (Edit)
3. Find this line:
   ```
   [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME/HEAD?urlpath=lab)
   ```
4. Replace:
   - `YOUR_GITHUB_USERNAME` with your GitHub username
   - `YOUR_REPO_NAME` with `vim-sagetex-workshop`
5. Click **"Commit changes"**

### Step 5: Generate Binder Link
1. Go to https://mybinder.org
2. In "GitHub repository name or URL" enter:
   ```
   https://github.com/YOUR_USERNAME/vim-sagetex-workshop
   ```
3. Leave "Git ref" as `HEAD`
4. In "Path to a notebook file" select "URL" and enter: `lab`
5. Click **"Launch"**
6. **IMPORTANT:** Copy the URL shown under "Copy the URL below..."
   - It will look like: `https://mybinder.org/v2/gh/YOUR_USERNAME/vim-sagetex-workshop/HEAD?urlpath=lab`

### Step 6: Test Your Binder (Important!)
1. Click the **"launch"** button on the Binder page
2. Wait 3-5 minutes for first build (subsequent launches are faster)
3. Once loaded, verify:
   - [ ] Terminal opens (File → New → Terminal)
   - [ ] `vim` command works
   - [ ] `sage` command works
   - [ ] Workshop files are in `~/workshop/`

### Step 7: Make postBuild Executable
**Important:** GitHub needs to know postBuild is a script
1. Go back to your GitHub repository
2. Open a terminal/command prompt on your computer
3. Clone your repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/vim-sagetex-workshop
   cd vim-sagetex-workshop
   chmod +x postBuild
   git add postBuild
   git commit -m "Make postBuild executable"
   git push
   ```

**Alternative if you can't use git locally:**
1. Click "Add file" → "Create new file" in GitHub
2. Name it `.gitattributes`
3. Add this content:
   ```
   postBuild text eol=lf executable
   ```
4. Commit the file

### Step 8: Share with Participants
Share **one** of these with participants:

**Option A - Direct Binder Link:**
```
https://mybinder.org/v2/gh/YOUR_USERNAME/vim-sagetex-workshop/HEAD?urlpath=lab
```

**Option B - Your Repository (with badge):**
```
https://github.com/YOUR_USERNAME/vim-sagetex-workshop
```
(They click the Binder badge in the README)

### Pre-Workshop Testing (Day Before)

1. **Launch your Binder** to cache the build
2. **Test with a colleague** - send them the link
3. **Verify PDF viewing** works in JupyterLab
4. **Check compilation** with a simple edit
5. **Note load time** for first launch (tell participants)

### Workshop Day Instructions for Participants

Write on board/slides:
```
1. Go to: [your binder link]
2. Wait for loading (coffee break!)
3. File → New → Terminal
4. Type: cd workshop
5. Type: vim vim_sagetex_workshop.tex
```

### Troubleshooting Common Issues

**"404 Not Found" on Binder:**
- Check repository is PUBLIC
- Verify username/repo name spelling
- Make sure files are in root of repository

**"Build Failed" on Binder:**
- Check environment.yml formatting (spaces matter!)
- Simplify environment.yml if needed
- Check Binder status: https://mybinder.readthedocs.io/en/latest/about/status.html

**postBuild not running:**
- Make sure it's executable (Step 7)
- Check for Windows line endings (use LF not CRLF)

**Slow performance:**
- Normal for first build (up to 10 minutes)
- Subsequent launches faster (builds are cached)
- Consider launching yourself first to pre-cache

### Emergency Backup Plans

If Binder fails during workshop:

**Plan A:** Use SageCell + online vim tutorial
- Vim: https://www.openvim.com/
- Sage: https://sagecell.sagemath.org/

**Plan B:** Share your screen
- You demonstrate while they follow along
- Share PDF of completed exercises

**Plan C:** Local installation help
- Provide installation script
- Help during break/after workshop

### Success Tips

✅ **DO:**
- Test 24 hours before
- Have backup plan ready
- Start with simple vim exercises
- Keep Binder link short (use URL shortener)
- Mention 3-5 minute load time upfront

❌ **DON'T:**
- Assume everyone has GitHub accounts
- Make repository private
- Edit files after participants start
- Forget to test PDF viewing
- Skip the executable permission step

---

## 🎉 Ready to Go!

Your workshop is now deployed! Participants just need to:
1. Click your Binder link
2. Wait for environment to load
3. Start learning Vim and SageTeX!

Good luck with your workshop! 🚀
