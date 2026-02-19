# Deployment Guide - Dev & Prod Environments

## 🎯 Environment Setup

You'll have two environments:
- **Development** (`dev` branch) → `pickup-privacy-git-dev.vercel.app`
- **Production** (`main` branch) → `pickup-privacy.vercel.app`

---

## 📋 Prerequisites

1. **GitHub CLI** (for creating repo):
   ```bash
   brew install gh
   gh auth login
   ```

2. **Vercel CLI** (for deployment):
   ```bash
   npm i -g vercel
   vercel login
   ```

---

## 🚀 Initial Setup (One-Time)

### Step 1: Create GitHub Repository

```bash
cd privacy-site

# Rename master to main
git branch -m master main

# Add all files
git add .
git commit -m "Initial commit: Privacy policy site with dev/prod setup"

# Create GitHub repo and push
gh repo create pickup-privacy --public --source=. --push

# Create dev branch
git checkout -b dev
git push -u origin dev

# Switch back to main
git checkout main
```

### Step 2: Deploy Production (main branch)

```bash
# Make sure you're on main branch
git checkout main

# Deploy to Vercel
vercel --prod

# Follow prompts:
# - Set up and deploy? Yes
# - Scope: Your account
# - Link to existing project? No
# - Project name: pickup-privacy
# - Directory: ./
# - Override settings? No
```

### Step 3: Deploy Development (dev branch)

```bash
# Switch to dev branch
git checkout dev

# Deploy to Vercel
vercel

# This creates your development environment
```

---

## 🔄 Daily Workflow

### Making Changes (Recommended Flow)

```bash
# 1. Start on dev branch
git checkout dev

# 2. Make your changes
# Edit index.html, support.html, etc.

# 3. Commit and push to dev
git add .
git commit -m "Update: describe your changes"
git push

# 4. Vercel auto-deploys to dev
# Test at: https://pickup-privacy-git-dev-[your-username].vercel.app

# 5. When ready for production, merge to main
git checkout main
git merge dev
git push

# 6. Vercel auto-deploys to production
# Live at: https://pickup-privacy.vercel.app
```

---

## 🌐 Your URLs

After setup:

| Environment | Branch | URL | Purpose |
|-------------|--------|-----|---------|
| **Production** | `main` | `pickup-privacy.vercel.app` | App Store, Live |
| **Development** | `dev` | `pickup-privacy-git-dev.vercel.app` | Testing |

---

## ✅ Quick Start Checklist

Run these commands in order:

```bash
# 1. Navigate to privacy-site directory
cd privacy-site

# 2. Rename branch to main
git branch -m master main

# 3. Stage all files
git add .

# 4. Initial commit
git commit -m "Initial commit: Privacy policy site"

# 5. Create GitHub repo
gh repo create pickup-privacy --public --source=. --push

# 6. Create and push dev branch
git checkout -b dev
git push -u origin dev
git checkout main

# 7. Deploy production
vercel --prod

# 8. Deploy development
git checkout dev
vercel
git checkout main
```

Done! You now have dev and prod environments.

---

## 🆘 Troubleshooting

**Deployment failed?**
```bash
vercel logs
```

**Wrong branch?**
```bash
git branch  # See current branch
git checkout main  # or 'dev'
```

**Need to redeploy?**
```bash
vercel --prod --force
```

---

## 📞 Support

- Vercel Docs: https://vercel.com/docs
- GitHub Docs: https://docs.github.com
