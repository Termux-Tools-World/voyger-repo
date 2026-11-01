
#!/data/data/com.termux/files/usr/bin/bash
set -e
echo "💀 VOYGER X: Activating Container 💀"

# আপনার ফাইলের নাম devils.gpg রাখা হয়েছে
curl -sL "https://raw.githubusercontent.com/Termux-Tools-World/voyger-repo/main/keys/devils.gpg" -o "$PREFIX/etc/apt/trusted.gpg.d/devils.gpg"
echo "deb [signed-by=$PREFIX/etc/apt/trusted.gpg.d/devils.gpg] https://raw.githubusercontent.com/Termux-Tools-World/voyger-repo/repo-dist ./" > $PREFIX/etc/apt/sources.list.d/voyger.list

pkg update -y
echo "✅ Setup Complete! Run: pkg install voyger-tool1"
