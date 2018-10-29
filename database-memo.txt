メイン
	書誌
	所蔵
	利用者
	貸出
	貸出履歴
	予約
	予約履歴
	設定
	管理ユーザー

書誌 - bibliography
	id
	ISBN13
	書籍JAN
	JAN販売対象
	JAN発行形態
	JAN内容
	JAN定価
	出版者ID
	責任表示1-ID
	関わり方1
	責任表示2-ID
	関わり方2
	責任表示3-ID
	関わり方3
	題名		title proper
	ダイメイ
	副題		parallel title
	フクダイ
	初版出版年月日
	ページ数	pages
	大きさ		specific
	シリーズID
	シリーズ内連番	series number
	レーベルID
	レーベル内連番	label number
	刊行形態ID
	内容		description
	言語ID		language
	原書の言語ID	original language
	NDC10
	NDC9
	NDC8
	一般件名1-ID
	一般件名2-ID
	一般件名3-ID
	注記		note

蔵書 - collection
	ID
	資料バーコード
	書誌ID
	請求記号	call number
	購入価格	price
	受入元ID
	版数		edition number
	出版年月日	date of publication
	蔵書区分ID
	排架区分ID

利用者 - user
	ID
	利用者ID(バーコード)
	氏名		user
	シメイ
	利用状態ID(貸出期間・使用不可)

貸出 - circulation
	ID
	利用者ID
	資料ID
	貸出日		date
	返却予定日	return expect date
	再貸出回数	count

貸出履歴 - circulation history
※返却された資料のテーブル。返却されたら貸出テーブルからレコードをDROPしてこちらにINSERT
	ID
	貸出ID
	利用者ID
	資料ID
	貸出日		circutation date
	返却日		return date
	再貸出回数

予約 - reservation
	ID
	利用者ID
	書誌ID
	予約日		reservation date

予約履歴 - reservation history
※予約を取り消した・貸し出された資料のテーブル。何らかの形で予約が消されたら予約テーブルからDROPしてこちらにINSERT
	ID
	利用者ID
	書誌ID
	予約日		reservation date
	取消日		cancellation date
	事由ID(取消・貸出・その他)

JAN販売対象 - jan selling target
	ID
	JANコード4桁目	code
	名称		name

JAN発行形態 - jan physical description
	ID
	JANコード5桁目	code
	名称		name

JAN内容 - jan classification
	ID
	JANコード6・7桁目 code
	名称		name

出版者 - publisher
	ID
	ISBN出版者コード code
	出版者名	publisher name
	シュッパンシャメイ
	出版地		place of publication
	シュッパンチ

責任表示 - statement of responsibility
	ID
	氏名		name
	シメイ

シリーズ - series
※例：「妖精作戦」
	ID
	シリーズ名
	シリーズメイ

レーベル - label
※例：「朝日ソノラマ文庫」
	ID
	レーベル名
	レーベルメイ

刊行形態 - physical description
※図書・雑誌・視聴覚(CD・DVD)
	ID
	形態		media type

言語 - language
※例：日本語・英語
	ID
	言語名

一般件名 - subject
	ID
	件名		name
	ケンメイ

受入元
※購入元や寄贈者名など
	ID
	名称		name
	メイショウ

蔵書区分 - collection division
※一般・児童・禁帯出・参考文献
	ID
	区分		division

排架区分 - shelving division
※開架・閉架・除籍・紛失・不明
	ID
	区分

利用状態 - status
	ID
	状態名	
	標準貸出日数(0なら不可)
	貸出点数
		刊行形態
		点数
	予約点数
		刊行形態
		点数
	再貸出回数

予約履歴事由
	ID
	事由項目

設定 - setting
	ID
	項目名
	設定値

管理ユーザー - administration
	ID
	ユーザー名
	パスワード
