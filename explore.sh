#!/bin/bash
echo "============================================="
echo "   🕵️‍♂️ Actions Ubuntu 限界突破・スペック調査隊 🕵️‍♂️"
echo "============================================="

echo -e "\n🛑 【CPU情報】お前の本当の型番を言え！"
lscpu | grep -E "Model name|Core\(s\) per socket|Thread\(s\) per core|L3 cache"

echo -e "\n🛑 【メモリ情報】お前、脳みその容量どれくらいあるの？"
free -h

echo -e "\n🛑 【ストレージ情報】SSDの空き容量と、読み書きの爆速度チェック！"
df -h /
echo "--- ディスクの書き込み速度テスト（1GBのダミー作成） ---"
dd if=/dev/zero of=testimg bs=1G count=1 oflag=dsync
rm testimg

echo -e "\n🛑 【ネットワーク情報】マシンの内部IPとかどうなってんの？"
ip a | grep "inet "

echo "============================================="
echo "   調査完了！Xeon Platinumの裏側、丸裸だぜ。  "
echo "============================================="