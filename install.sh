#!/data/data/com.termux/files/usr/bin/bash
set -e
echo "💀 VOYGER X: Activating Container 💀"

# এখানে voyger.gpg নাম দেওয়া হলো
curl -sL "https://raw.githubusercontent.com/Termux-Tools-World/voyger-repo/main/keys/voyger.gpg" -o "$PREFIX/etc/apt/trusted.gpg.d/voyger.gpg"
echo "deb [signed-by=$PREFIX/etc/apt/trusted.gpg.d/voyger.gpg] https://raw.githubusercontent.com/Termux-Tools-World/voyger-repo/repo-dist ./" > $PREFIX/etc/apt/sources.list.d/voyger.list

pkg update -y
echo "✅ Setup Complete! Run: pkg install voyger-tool1"
