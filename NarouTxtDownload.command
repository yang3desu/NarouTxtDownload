#!/bin/bash

# ---------------------------------
# 小説家になろうTXTダウンローダー
# ---------------------------------

# お使いのブラウザで、ダウンロード設定の確認ダイアログを非表示にしておく
# Vivaldiの場合：
# 設定＞ダウンロード＞[x] 確認せずに設定のダウンロード先にファイルを保存する

# ①お使いのブラウザで、DLしたい作品の目次ページを開く
# TXTダウンロードをクリック、URL最後のほうの"ncode/*******/"の数字をメモ

# ②↓baseurlの"ncode/"と"/?"の間にある数字を、メモした数字に書き換える

# ③全部で何話あるか、作品の最新話を開いてURLから話数を確認
# 30行目「`seq 1 100`」の右側の数字を、最新話の数字に変更

# ④このファイルをダブルクリックして実行
# ※実行権限を与えてください




baseurl="https://ncode.syosetu.com/txtdownload/dlstart/ncode/*******/?no="

for i in `seq 1 10`
do
    open "$baseurl$i";
    if (( $i % 10 == 0 ))
        then
        echo "...サーバー負荷軽減のため、処理を一時停止。20秒したら再開（現在"$i
        sleep 20
    fi
done


echo "---------------------------------"






<< "#__CO__"

■要修正
ダウンロードしたファイルは「(Nコード)-1.txt」と連番がつく。
この連番が001形式でないため、txtファイル同士を整列するときに不便

■希望


■参考

なろうのテキストを一括ダウンロードするバッチを書いた
https://nyanshiba.hatenablog.com/entry/2017/10/31/204846

3の倍数でahoになるシェルプログラム
https://qiita.com/saito_now/items/8e27142e162de60d6cf8

#__CO__
