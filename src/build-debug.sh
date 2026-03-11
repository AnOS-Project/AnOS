cp profiledef-debug.sh profiledef.sh
sudo rm -rf work out && sudo mkarchiso -v -w work -o out .
cp profiledef-rel.sh profiledef.sh
