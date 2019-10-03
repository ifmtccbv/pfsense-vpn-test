# pfSense VPN Test

Instruções:

+ Vá em <i>Diagnostics > Edit file</i>
+ Copie e cole o código do script, editando as variáveis para corresponder às suas configurações.
+ Salve o arquivo como /usr/local/bin/ping-vpn-test.sh
+ Vá em <i>Diagnostics > Command</i>
+ Execute o comando "chmod + x /usr/local/bin/ping-vpn-test.sh" (tornará o arquivo executável)
+ Vá para <i>System > Packages</i> e instale o pacote Cron
+ Vá em <i>Services > Cron</i>
+ Defina um novo cron com as configurações "* / 15 * * * * root /usr/local/bin/ping-vpn-test.sh" (executa teste a cada 5 minutos)
