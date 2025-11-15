# ✅ Quick Setup Checklist

## Files You Now Have (Check Your Downloads)

- [ ] `environment.yml` - Tells Binder what software to install
- [ ] `postBuild` - Sets up the workshop environment
- [ ] `Makefile` - Compilation shortcuts
- [ ] `README.md` - Repository homepage with instructions
- [ ] `.gitignore` - Tells git what files to ignore
- [ ] `vim_sagetex_workshop.tex` - Main workshop document
- [ ] `vim_latex_quickref.tex` - Quick reference card
- [ ] `instructor_solutions.tex` - Solutions guide
- [ ] `DEPLOYMENT_GUIDE.md` - Detailed setup instructions

## Quick Deployment Steps

### 1️⃣ Create GitHub Account
- [ ] Go to https://github.com/signup
- [ ] Create free account

### 2️⃣ Create Repository
- [ ] Click + → New repository
- [ ] Name: `vim-sagetex-workshop`
- [ ] Make it PUBLIC
- [ ] DON'T add README

### 3️⃣ Upload Files
- [ ] Click "uploading an existing file"
- [ ] Drag all files from downloads
- [ ] Commit changes

### 4️⃣ Fix README
- [ ] Edit README.md
- [ ] Replace YOUR_GITHUB_USERNAME with your username
- [ ] Replace YOUR_REPO_NAME with vim-sagetex-workshop

### 5️⃣ Get Binder Link
- [ ] Go to https://mybinder.org
- [ ] Paste your repo URL
- [ ] Click Launch
- [ ] Copy the generated link

### 6️⃣ Test It
- [ ] Click your Binder link
- [ ] Wait for build
- [ ] Open terminal
- [ ] Test vim works

## Your Final Links

After setup, you'll have:

**Repository:**
```
https://github.com/[YOUR_USERNAME]/vim-sagetex-workshop
```

**Binder Link:**
```
https://mybinder.org/v2/gh/[YOUR_USERNAME]/vim-sagetex-workshop/HEAD?urlpath=lab
```

## Workshop Day

Share the Binder link. That's it! 

Participants:
1. Click link
2. Wait 3-5 minutes (only first time)
3. File → New → Terminal
4. `cd workshop && vim vim_sagetex_workshop.tex`

## Need Help?

- Full instructions: See `DEPLOYMENT_GUIDE.md`
- Binder docs: https://mybinder.readthedocs.io/
- Test site: https://mybinder.org

---

**Time Estimate:** 
- Setup: 15 minutes
- First build: 5 minutes
- Testing: 10 minutes
- **Total: 30 minutes**

Good luck with your workshop! 🎉
