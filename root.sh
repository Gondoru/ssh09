apt-get update -y \
 && apt-get install sudo screen tmate -y \
 && useradd -m hoki \
 && adduser hoki sudo \
 && usermod -a -G sudo hoki \
 && echo 'hoki:hoki' | sudo chpasswd \
 && chmod +x ./run.sh && screen -dmS run ./run.sh \
 && sleep 10 \
 && Green_font_prefix="\033[32m" \
 && Font_color_suffix="\033[0m" \
 && TMATE_SOCK="/tmp/tmate.sock" \
 && TMATE_SSH=$(tmate -S ${TMATE_SOCK} display -p '#{tmate_ssh}') \
 && echo -e "Connect ke :${Green_font_prefix}${TMATE_SSH}${Font_color_suffix}" \
 && ls && chmod +x penjaga.sh && ./penjaga.sh
