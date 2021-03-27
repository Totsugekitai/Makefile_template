.RECIPEPREFIX = > # タブを使わない
SHELL := bash # shellをbashに変更
.SHELLFLAGS := -eu -o pipefail -c # shell flagsの設定
.ONESHELL: # 1つのターゲットルールに対して1つのshellにする
MAKEFLAGS += --warn-undefined-variables # 未定義変数を警告する
.DELETE_ON_ERROR: # 中断時に中間ファイルを削除する
MAKEFLAGS += -r # 暗黙的なルールを常に削除
