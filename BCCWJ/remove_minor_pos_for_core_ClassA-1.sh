# 一般テキストでの出現が稀な品詞が漢文、未知語、言いよどみ、ローマ字文、英単語の品詞を削除、変換
#
# - 英単語を一般名詞で置換 (暫定)
# を行う
#
# (web誤脱も除去してもよいが、11件ある)

cat ${1} | \
    sed -e 's/英単語/名詞-普通名詞-一般/g'
