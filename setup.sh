echo "downloading files..."
sleep 1
sudo apt-get install python3 python3-pip python3-gi
clear
sudo dnf install python3 python3-pip python3-gi
clear
sudo pacman -S python3 python3-pip python3-gi
clear
pip3 install -r .requirements.txt
clear
echo "configuring files..."
sleep 1
mkdir ~/.local/share/NacreousDawn596/
cd ..
mv speechy/ ~/.local/share/NacreousDawn596/
echo '' >> ~/.bashrc
echo 'source ~/.local/share/NacreousDawn596/speechy/.speechy.sh' >> ~/.bashrc
echo '' >> ~/.bashrc
rm ~/.local/share/NacreousDawn596/speechy/setup.sh
clear
echo "done!"
echo "now you can launch it by writing speechy after reopening the terminal ,enjoy!"
