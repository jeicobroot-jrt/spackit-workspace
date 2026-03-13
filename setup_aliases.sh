# --- Spackit Message (.SM) Protocol ---
export SM_PATH="/var/spackit/messages"

# Asegurar que el directorio existe sin errores de permiso
alias sm-init='sudo mkdir -p $SM_PATH && sudo chmod 777 $SM_PATH'

# Crear: sm-new 192.168.1.50 "Contenido del mensaje"
alias sm-new='_sm_new(){ echo -e "ORIGIN: local\nFECHA: $(date)\nMSG: $2" > "$SM_PATH/$1.SM"; echo "Archive $1.SM created."; }; _sm_new'

# Leer: sm-read 192.168.1.50
alias sm-read='_sm_read(){ [ -f "$SM_PATH/$1.SM" ] && cat "$SM_PATH/$1.SM" || echo "Err 1312."; }; _sm_read'

# Listar: sm-ls
alias sm-ls='ls -1 $SM_PATH | grep ".SM" || echo "Err 8139."'

# Borrar: sm-del 192.168.1.50
alias sm-del='_sm_del(){ rm "$SM_PATH/$1.SM" && echo "Message of $1 eliminated."; || echo Err 324 }; _sm_del'

# Enviar por red
alias sm-send='_sm_send(){ echo "$2" > /var/spackit/messages/"$1".SM; curl -s --max-time 2 "http://$1:1234" > /dev/null || echo "ALERT: Error 35 (Connection Error) - the message has saved on $1.SM"; }; _sm_send'

alias sm-help='echo "sm-del: you can delete messages with this. 
sm-init:if you are new downloading the package.
sm-new:this create the user do you want to add.
sm-read:you can see the messages via SM (Spackit Message) of the users of you create or added
sm-ls:This give you a list of the IPs you have added


===LIST OF ERR NUMBERS===

35=Conection Error
1312=No Messages
8139=Has Not IPs
324=Cannot Be Eliminated"'
