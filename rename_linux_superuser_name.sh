#!/bin/bash

read -p "Enter current superuser name: " current_name
read -p "Enter new superuser name: " new_name

sed -i -e "s/$current_name/$new_name/g" /etc/passwd

sed -i -e "s/$current_name/$new_name/g" /etc/shadow

sed -i -e "s/$current_name/$new_name/g" /etc/group

mv /home/$current_name /home/$new_name

echo "Done ! Your current name now set to" $new_name"."
