echo "=== CONFIGURE OS ==="

echo ""
echo "=== INSTALL OH-MY-ZSH ==="
echo "-> reference: <https://github.com/ohmyzsh/ohmyzsh>"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ""
echo "=== INSTALL KEYBOARD LAYOUT ==="
curl -fs https://github.com/xv0x7c0/osx-us-altgr-intl/blob/master/us-altgr-intl.keylayout > ./us-altgr-intl.keylayout
sudo mv ./us-altgr-intl.keylayout /Library/Keyboard\ Layouts
echo "A reboot is probably required for the new keymap no appear in Preferences/Keyboard"

echo ""
echo "== SUCCESS =="
