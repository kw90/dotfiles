wget -O lp-albert-ext.zip https://github.com/davidpicarra/lastpass-albert-extension/archive/refs/heads/master.zip
unzip lp-albert-ext.zip
sudo ln -s $(pwd)/lp-albert-ext/lastpass-albert-extension-master/ /usr/share/albert/org.albert.extension.python/modules

wget -O i3-albert-ext.zip https://github.com/Serede/i3-windows-albert/archive/refs/heads/master.zip
unzip i3-albert-ext.zip
sudo ln -s $(pwd)/i3-windows-albert-master/ /usr/share/albert/org.albert.extension.python/modules
