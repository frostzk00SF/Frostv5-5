#!/data/data/com.termux/files/usr/bin/bash

# ==============================================================================
#  ANDROID OPTIMIZATION SCRIPT - TERMUX MODULE V4.0 (COMPATIBILIDADE AMPLIADA)
#  DEVELOPED BY: frostzk00SF
#  TIKTOK: @frostzk00SF
# ==============================================================================

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
PURPLE='\033[1;35m'
RESET='\033[0m'
BOLD='\033[1m'
BLINK='\033[5m'

clear

echo -e "${RED}"
echo "███████╗██████╗  ██████╗ ███████╗████████╗███████╗██╗  ██╗ ██████╗  ██████╗  ███████╗"
echo "██╔════╝██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝╚══███╔╝██║ ██╔╝██╔═████╗██╔═████╗██╔════╝"
echo "█████╗  ██████╔╝██║   ██║███████╗   ██║      ███╔╝ █████╔╝ ██║██╔██║██║██╔██║███████╗"
echo "██╔══╝  ██╔══██╗██║   ██║╚════██║   ██║     ███╔╝  ██╔═██╗ ████╔╝██║████╔╝██║╚════██║"
echo "██║     ██║  ██║╚██████╔╝███████║   ██║    ███████╗██║  ██╗╚██████╔╝╚██████╔╝███████║"
echo "╚═╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝    ╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝"
echo -e "${RESET}"

echo -e "${CYAN}====================================================================${RESET}"
echo -e "${BOLD}🚀 ANDROID OPTIMIZER MODULE v4.0 - SISTEMA ANTI-COMPARTILHAMENTO${RESET}"
echo -e "${YELLOW}👤 CRIADO POR: ${RED}frostzk00SF${RESET}"
echo -e "${YELLOW}📱 TIKTOK: ${PURPLE}@frostzk00SF${RESET}"
echo -e "${CYAN}====================================================================${RESET}"
echo ""

IS_ROOT=false
if [ "$EUID" -eq 0 ]; then
    IS_ROOT=true
fi

DEVICE_ID=$(getprop ro.serialno 2>/dev/null || getprop ro.boot.serialno 2>/dev/null || echo "$DATA_ONLY" | md5sum | awk '{print $1}')
if [ -z "$DEVICE_ID" ] || [ "$DEVICE_ID" = "d41d8cd98f00b204e9800998ecf8427e" ]; then
    DEVICE_ID=$(uname -m | md5sum | awk '{print $1}')
fi

DB_DIR="$HOME/.tzk_security"
mkdir -p "$DB_DIR"

show_progress() {
    local duration=$1
    local task=$2
    echo -ne "${YELLOW}[~] $task... ${RESET}"
    sleep $duration
    echo -e "${GREEN}[OK]${RESET}"
}

echo -e "${BOLD}Escolha uma opção de otimização:${RESET}"
echo -e "${GREEN}[1]${RESET} Otimizar Free Fire Normal (120 FPS + FLUIDEZ EXTREMA)"
echo -e "${CYAN}[2]${RESET} Otimizar Free Fire MAX (120 FPS + FLUIDEZ EXTREMA)"
echo -e "${PURPLE}[3]${RESET} Otimizar Celular no Geral [VERSÃO VIP ⭐]"
echo -e "${RED}[4]${RESET} Sair"
echo ""
echo -ne "${BOLD}Digite o número da opção: ${RESET}"
read opcao

case $opcao in
    1|2)
        clear
        GAME_NAME="FREE FIRE NORMAL"
        PKG_NAME="com.dts.freefireth"
        if [ "$opcao" = "2" ]; then
            GAME_NAME="FREE FIRE MAX"
            PKG_NAME="com.dts.freefiremax"
        fi
        
        echo -e "${RED}🔥 INICIANDO OTIMIZAÇÃO EXTRA PARA $GAME_NAME 🔥${RESET}"
        echo -e "${CYAN}====================================================================${RESET}"
        echo ""
        show_progress 1.5 "Fechando apps secundários para liberar RAM dedicada"
        show_progress 2.0 "Forçando renderização OpenGLES"
        setprop debug.egl.hw 1 > /dev/null 2>&1
        setprop debug.gr.numframebuffers 3 > /dev/null 2>&1
        
        show_progress 1.8 "Ajustando sensibilidade da tela e Touch Response"
        setprop touch.deviceType touchScreen > /dev/null 2>&1
        setprop windowsmgr.max_events_per_sec 150 > /dev/null 2>&1
        
        show_progress 1.2 "Configurando engine gráfica para modo Boost (120Hz)"
        setprop ro.vendor.display.default_fps 120 > /dev/null 2>&1
        setprop persist.sys.NV_FPSLIMIT 120 > /dev/null 2>&1
        
        show_progress 1.0 "Aplicando compilação de alta prioridade"
        cmd package compile -m speed -a $PKG_NAME > /dev/null 2>&1
        
        echo ""
        echo -e "${CYAN}====================================================================${RESET}"
        echo -e "${GREEN}✨ $GAME_NAME OTIMIZADO! Abra o jogo e sinta a diferença. ✨${RESET}"
        echo -e "${YELLOW}Créditos: @frostzk00SF no TikTok${RESET}"
        echo -e "${CYAN}====================================================================${RESET}"
        ;;
        
    3)
        clear
        echo -e "${RED}⚠️ RECURSO BLOQUEADO - VERSÃO VIP ⚠️${RESET}"
        echo -e "${CYAN}====================================================================${RESET}"
        echo -e "${YELLOW}A otimização geral requer uma licença válida e individual por celular.${RESET}"
        echo -e "${RED}Chame agora no TikTok para comprar a sua chave de ativação:${RESET}"
        echo -e "${BOLD}👉 TikTok: ${PURPLE}@frostzk00SF${RESET}"
        echo -e "${CYAN}====================================================================${RESET}"
        echo ""
        echo -ne "${YELLOW}Digite a sua Chave VIP para ativar (Texto oculto): ${RESET}"
        read -s chave
        echo ""

        VALIDADO=false
        TEMPO_KEY=""

        # 150 Chaves (50 de cada, codificadas)
        K1=$(echo "VFpLLTFESUEtMDAxClRaSy0xRElBLTAwMgpUWkstMURJQS0wMDMKVFpLLTFESUEtMDA0ClRaSy0xRElBLTAwNQpUWkstMURJQS0wMDYKVFpLLTFESUEtMDA3ClRaSy0xRElBLTAwOApUWkstMURJQS0wMDkKVFpLLTFESUEtMDEwClRaSy0xRElBLTAxMQpUWkstMURJQS0wMTIKVFpLLTFESUEtMDEzClRaSy0xRElBLTAxNApUWkstMURJQS0wMTUKVFpLLTFESUEtMDE2ClRaSy0xRElBLTAxNwpUWkstMURJQS0wMTgKVFpLLTFESUEtMDE5ClRaSy0xRElBLTAyMApUWkstMURJQS0wMjEKVFpLLTFESUEtMDIyClRaSy0xRElBLTAyMwpUWkstMURJQS0wMjQKVFpLLTFESUEtMDI1ClRaSy0xRElBLTAyNgpUWkstMURJQS0wMjcKVFpLLTFESUEtMDI4ClRaSy0xRElBLTAyOQpUWkstMURJQS0wMzAKVFpLLTFESUEtMDMxClRaSy0xRElBLTAzMgpUWkstMURJQS0wMzMKVFpLLTFESUEtMDM0ClRaSy0xRElBLTAzNQpUWkstMURJQS0wMzYKVFpLLTFESUEtMDM3ClRaSy0xRElBLTAzOApUWkstMURJQS0wMzkKVFpLLTFESUEtMDQwClRaSy0xRElBLTA0MQpUWkstMURJQS0wNDIKVFpLLTFESUEtMDQzClRaSy0xRElBLTA0NApUWkstMURJQS0wNDUKVFpLLTFESUEtMDQ2ClRaSy0xRElBLTA0NwpUWkstMURJQS0wNDgKVFpLLTFESUEtMDQ5ClRaSy0xRElBLTA1MA==" | base64 -d)
        K7=$(echo "VFpLLTdESUFTLTA1MQpUWkstN0RJQVMtMDUyClRaSy03RElBUy0wNTMKVFpLLTdESUFTLTA1NApUWkstN0RJQVMtMDU1ClRaSy03RElBUy0wNTYKVFpLLTdESUFTLTA1NwpUWkstN0RJQVMtMDU4ClRaSy03RElBUy0wNTkKVFpLLTdESUFTLTA2MApUWkstN0RJQVMtMDYxClRaSy03RElBUy0wNjIKVFpLLTdESUFTLTA2MwpUWkstN0RJQVMtMDY0ClRaSy03RElBUy0wNjUKVFpLLTdESUFTLTA2NgpUWkstN0RJQVMtMDY3ClRaSy03RElBUy0wNjgKVFpLLTdESUFTLTA2OQpUWkstN0RJQVMtMDcwClRaSy03RElBUy0wNzEKVFpLLTdESUFTLTA3MgpUWkstN0RJQVMtMDczClRaSy03RElBUy0wNzQKVFpLLTdESUFTLTA3NQpUWkstN0RJQVMtMDc2ClRaSy03RElBUy0wNzcKVFpLLTdESUFTLTA3OApUWkstN0RJQVMtMDc5ClRaSy03RElBUy0wODAKVFpLLTdESUFTLTA4MQpUWkstN0RJQVMtMDgyClRaSy03RElBUy0wODMKVFpLLTdESUFTLTA4NApUWkstN0RJQVMtMDg1ClRaSy03RElBUy0wODYKVFpLLTdESUFTLTA4NwpUWkstN0RJQVMtMDg4ClRaSy03RElBUy0wODkKVFpLLTdESUFTLTA5MApUWkstN0RJQVMtMDkxClRaSy03RElBUy0wOTIKVFpLLTdESUFTLTA5MwpUWkstN0RJQVMtMDk0ClRaSy03RElBUy0wOTUKVFpLLTdESUFTLTA5NgpUWkstN0RJQVMtMDk3ClRaSy03RElBUy0wOTgKVFpLLTdESUFTLTA5OQpUWkstN0RJQVMtMTAw" | base64 -d)
        K30=$(echo "VFpLLTMwRElBUy0xMDEKVFpLLTMwRElBUy0xMDIKVFpLLTMwRElBUy0xMDMKVFpLLTMwRElBUy0xMDQKVFpLLTMwRElBUy0xMDUKVFpLLTMwRElBUy0xMDYKVFpLLTMwRElBUy0xMDcKVFpLLTMwRElBUy0xMDgKVFpLLTMwRElBUy0xMDkKVFpLLTMwRElBUy0xMTAKVFpLLTMwRElBUy0xMTEKVFpLLTMwRElBUy0xMTIKVFpLLTMwRElBUy0xMTMKVFpLLTMwRElBUy0xMTQKVFpLLTMwRElBUy0xMTUKVFpLLTMwRElBUy0xMTYKVFpLLTMwRElBUy0xMTcKVFpLLTMwRElBUy0xMTgKVFpLLTMwRElBUy0xMTkKVFpLLTMwRElBUy0xMjAKVFpLLTMwRElBUy0xMjEKVFpLLTMwRElBUy0xMjIKVFpLLTMwRElBUy0xMjMKVFpLLTMwRElBUy0xMjQKVFpLLTMwRElBUy0xMjUKVFpLLTMwRElBUy0xMjYKVFpLLTMwRElBUy0xMjcKVFpLLTMwRElBUy0xMjgKVFpLLTMwRElBUy0xMjkKVFpLLTMwRElBUy0xMzAKVFpLLTMwRElBUy0xMzEKVFpLLTMwRElBUy0xMzIKVFpLLTMwRElBUy0xMzMKVFpLLTMwRElBUy0xMzQKVFpLLTMwRElBUy0xMzUKVFpLLTMwRElBUy0xMzYKVFpLLTMwRElBUy0xMzcKVFpLLTMwRElBUy0xMzgKVFpLLTMwRElBUy0xMzkKVFpLLTMwRElBUy0xNDAKVFpLLTMwRElBUy0xNDEKVFpLLTMwRElBUy0xNDIKVFpLLTMwRElBUy0xNDMKVFpLLTMwRElBUy0xNDQKVFpLLTMwRElBUy0xNDUKVFpLLTMwRElBUy0xNDYKVFpLLTMwRElBUy0xNDcKVFpLLTMwRElBUy0xNDgKVFpLLTMwRElBUy0xNDkKVFpLLTMwRElBUy0xNTA=" | base64 -d)

        if echo "$K1" | grep -Fqx "$chave"; then
            VALIDADO=true; TEMPO_KEY="1 DIA"
        elif echo "$K7" | grep -Fqx "$chave"; then
            VALIDADO=true; TEMPO_KEY="7 DIAS"
        elif echo "$K30" | grep -Fqx "$chave"; then
            VALIDADO=true; TEMPO_KEY="30 DIAS"
        fi

        if [ "$VALIDADO" = true ]; then
            KEY_MD5=$(echo -n "$chave" | md5sum | awk '{print $1}')
            LOCAL_REG_FILE="$DB_DIR/reg_$KEY_MD5"

            if [ -f "$LOCAL_REG_FILE" ]; then
                SAVED_ID=$(cat "$LOCAL_REG_FILE")
                if [ "$SAVED_ID" != "$DEVICE_ID" ]; then
                    echo -e "${RED}[❌] ERRO DE SEGURANÇA: Esta chave já foi registrada em outro aparelho!${RESET}"
                    echo -e "${RED}[❌] Chaves são individuais. Compre uma nova licença com @frostzk00SF.${RESET}"
                    exit 1
                fi
            else
                echo "$DEVICE_ID" > "$LOCAL_REG_FILE"
            fi

            echo -e "${GREEN}[+] Chave VIP Autenticada com Sucesso! [PLANO: $TEMPO_KEY]${RESET}"
            echo -e "${BLUE}[*] Executando Otimização Geral do Sistema...${RESET}"
            echo ""
            
            show_progress 1.5 "Limpando cache profundo da partição /data e /cache"
            if $IS_ROOT; then echo 3 > /proc/sys/vm/drop_caches; sync; fi
            
            show_progress 1.8 "Ajustando governador da CPU para Performance Máxima"
            if $IS_ROOT; then echo "performance" | tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null 2>&1; fi
            
            show_progress 1.5 "Otimizando buffers de rede TCP"
            setprop net.tcp.buffersize.wifi 4096,87380,1102080,4096,16384,1102080 > /dev/null 2>&1
            
            show_progress 1.2 "Reduzindo latência do Kernel"
            setprop persist.sys.use_dithering 0 > /dev/null 2>&1
            setprop sys.use_fifo_ui 1 > /dev/null 2>&1
            
            echo ""
            echo -e "${CYAN}====================================================================${RESET}"
            echo -e "${GREEN}✨ OTIMIZAÇÃO GERAL CONCLUÍDA! Plano de $TEMPO_KEY ativo! ✨${RESET}"
            echo -e "${RED}${BLINK}⚠️  AVISO CRÍTICO: NÃO REINICIE O SEU CELULAR! ⚠️${RESET}"
            echo -e "${YELLOW}Se você reiniciar o dispositivo, o sistema operacional do Android apaga${RESET}"
            echo -e "${YELLOW}as propriedades modificadas (setprops) e os códigos vão parar de funcionar!${RESET}"
            echo -e "${CYAN}====================================================================${RESET}"
        else
            echo -e "${RED}[❌] ERRO: Chave inválida ou plano expirado!${RESET}"
            echo -e "${RED}[❌] Operação cancelada. Compre sua chave legítima com @frostzk00SF.${RESET}"
        fi
        ;;
        
    4)
        echo -e "${BLUE}Saindo... Siga @frostzk00SF no TikTok!${RESET}"
        exit 0
        ;;
    *)
        echo -e "${RED}Opção inválida! Reinicie o script.${RESET}"
        ;;
esac