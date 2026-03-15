# --- Spackit Message (.SM) Protocol ---
export SM_PATH="/var/spackit/messages"


alias sw-init='sudo mkdir -p $SM_PATH && sudo chmod 777 $SM_PATH && sudo pacman -S yay'


alias sw-new='_sm_new(){ echo -e "ORIGIN: local\nFECHA: $(date)\nMSG: $2" > "$SM_PATH/$1.SM"; echo "Archive $1.SM created."; }; _sm_new'


alias sw-read='_sm_read(){ [ -f "$SM_PATH/$1.SM" ] && cat "$SM_PATH/$1.SM" || echo "Err 1312."; }; _sm_read'


alias sw-ls='ls -1 $SM_PATH | grep ".SM" || echo "Err 8139."'


alias sw-del='_sm_del(){ rm "$SM_PATH/$1.SM" && echo "Message of $1 eliminated."; || echo Err 324 }; _sm_del'


alias sw-send='_sm_send(){ echo "$2" > /var/spackit/messages/"$1".SM; curl -s --max-time 2 "http://$1:1234" > /dev/null || echo "ALERT: Error 35 (Connection Error) - the message has saved on $1.SM"; }; _sm_send'

# --- Spackit Workspace (.SW) protocol ---

alias pacman="sudo pacman -S"

alias aur="yay -S"

alias root="su"

mak() {
  updpkgsums
  makepkg --printsrcinfo > .SRCINFO
  makepkg -si
}

alias sw-help='echo "sw-del: you can delete messages with this. 
sw-init:if you are new downloading the package.
sw-new:this create the user do you want to add.
sw-read:you can see the messages via SM (Spackit Message) of the users of you create or added
sw-ls:This give you a list of the IPs you have added


===LIST OF ERR NUMBERS===

35=Conection Error
1312=No Messages
8139=Has Not IPs
324=Cannot Be Eliminated"'
