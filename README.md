# Pickup Privacy & Support Site

Simple static site for privacy policy and support pages.

## 📁 Files

- `index.html` - Privacy Policy
- `support.html` - Support & FAQ
- `style.css` - Shared styles
- `vercel.json` - Vercel deployment config

## 🚀 Quick Deploy to Vercel (FREE)

### Option 1: Via Vercel Dashboard (Easiest)

1. **Create GitHub repo:**
   ```bash
   cd privacy-site
   git init
   git add .
   git commit -m "Initial privacy site"
   gh repo create pickup-privacy --public --source=. --push
   ```

2. **Deploy to Vercel:**
   - Go to [vercel.com](https://vercel.com)
   - Click "Add New Project"
   - Import your `pickup-privacy` repo
   - Click "Deploy"
   - Done! You'll get a URL like `pickup-privacy.vercel.app`

### Option 2: Via Vercel CLI

```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
cd privacy-site
vercel

# Follow prompts:
# - Link to existing project? No
# - Project name: pickup-privacy
# - Directory: ./
# - Deploy? Yes
```

## 🔗 Your URLs

After deployment, you'll have:
- Privacy Policy: `https://pickup-privacy.vercel.app/` or `/privacy`
- Support: `https://pickup-privacy.vercel.app/support`

## ✏️ Customize Before Deploying

### 1. Update Email Address
Search and replace in all files:
```
support@pickupbasketball.app
```
With your actual email.

### 2. Update App Store Link
In `support.html`, find this line and add your App Store URL:
```html
<a href="#" class="button">Download on App Store</a>
```

### 3. Update Company Name (Optional)
In footer sections, update:
```html
&copy; 2026 Pickup Basketball
```

## 🎨 Custom Domain (Optional)

Want `pickup.app/privacy` instead of `pickup-privacy.vercel.app`?

1. **Buy domain** (Namecheap, Google Domains, etc.)
2. **Add to Vercel:**
   - Project Settings → Domains
   - Add your domain
   - Follow DNS instructions
3. **Done!**

## 📱 Add to App Store Connect

Once deployed, add your privacy URL to App Store Connect:
```
https://pickup-privacy.vercel.app/
```
or
```
https://yourdomain.com/privacy
```

## 🔄 Updates

To update content:
1. Edit the HTML files
2. Commit and push to GitHub
3. Vercel auto-deploys (takes ~30 seconds)

Or use Vercel CLI:
```bash
vercel --prod
```

## ✅ Checklist

- [ ] Replace `support@pickupbasketball.app` with your email
- [ ] Update company name in footer
- [ ] Deploy to Vercel
- [ ] Test both pages (privacy, support)
- [ ] Add URL to App Store Connect
- [ ] (Optional) Set up custom domain

## 💡 Tips

- Privacy page URL can be `/` or `/privacy` - both work
- Keep email address current for App Store support
- Update "Last Updated" date when you change privacy policy
- FAQ answers can be updated anytime without app review

## 🆘 Troubleshooting

**404 errors?**
- Check `vercel.json` is in the root
- Verify files are named correctly

**Styling broken?**
- Make sure `style.css` is in same directory
- Check browser console for errors

**Need help?**
- Vercel docs: https://vercel.com/docs
- Vercel Discord: https://vercel.com/discord

---

**Deployment time:** ~5 minutes
**Cost:** FREE (Vercel free tier)
**Updates:** Instant via git push
