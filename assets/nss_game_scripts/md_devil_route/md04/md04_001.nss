//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_001.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg028_横浜ＧＨＱ基地_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_002.nss";

}

scene md04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_029vs.nss"

//◆※戦争シーンでどれだけ絵素材を用意するかは一考。
//◆最悪、通常の背景にボカーンボカーンとＳＥだけ鳴
//◆らして「戦争やってます」と言い張るのも手。

//◆夜
//◆横浜基地
//◆横書きボックス

//■このファイル立ち絵表示させるべきでしょうか、密談っぽい印象がある＆３体キャラ表示は少々苦しそうです inc櫻井
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1100, @100, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-100, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);

	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010010b00">
「……どういうことだ？
　キャノン中佐！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010020b03">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010030b00">
「<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>の本体は<RUBY text="このくに">大和</RUBY>に届いたのだな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010040b03">
「ええ、ウィロー少将。
　到着したのは間違いありません」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010050b00">
「ならどうして、我々の手に渡らない？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010060b03">
「拒否されているからです……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010070b00">
「誰に！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010080b03">
「輸送艦の艦長に。
　許可があるまで引渡しはしかねる、と」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010090b00">
「運んできておいて、今更引渡しの許可だと？
　それは何の冗談だ！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010100b03">
「ええ……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010110a13">
「はるばる来てやったのだから<RUBY text="チップ">小遣い</RUBY>をくれ、
などという話ではないのだろうね？
　当然」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010120b03">
「そんな話なら良かったのですが、教授。
　向こうにはまともに対話する様子もありま
せん」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010130b03">
「連盟本部の許可を待て、の一点張りで」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010140b00">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010150a13">
「鍛造雷弾の使用は既に決まったことだ。
　なのに今更、許可云々と言い出すのなら」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010160a13">
「輸送中に、何か横槍が入ったとしか考えら
れないね」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010170b03">
「……そうなります」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010180b00">
「連盟本部の人権派が急に発言力を増しでも
したのか……。
　それともロシア投下を望む連中の突き上げ
か？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010190a13">
「あるいは……<RUBY text="・・・">ばれた</RUBY>のか」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010200b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010210b03">
「我々の真意が」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010220b03">
「我々は――大和進駐軍は大和の征服支配を
完了するが、その成果を<RUBY text="エンプレス・オブ・ブリテン">偉大なる女王陛下</RUBY>に
差し上げるつもりは<RUBY text="・・">ない</RUBY>、と……
　連盟本部に知られた？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010230a13">
「考えたくもない可能性だがね」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010240b00">
「……本当に考えたくありませんな」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010250b03">
「現時点では憶測ですよ、閣下」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010260b00">
「わかっている……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010270b03">
「対応を考えましょう」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010280b00">
「今は待つしかあるまい。
　ジュネーヴの同志が連絡をくれるはずだ。
何が起きたのかを確認してから――」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010290a13">
「それでは、遅いのではないかな」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010300b00">
「……ウォルフ教授？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010310a13">
「我々は鍛造雷弾投下の意義について本部に
幾度も説明し、納得させてきた。そのはずだ。
　間もなく訪れる絶好の機会に投下すれば、
まさしく一朝にして一国を得られると……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010320a13">
「なのに、この期に及んで<RUBY text="ストップ">待った</RUBY>が掛かると
いうのはどう考えても尋常な事態ではない。
　余程の異変が連盟本部で起きていると判断
するべきだ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010330a13">
「鍛造雷弾の運用に留まる問題ではなく……
　対大和政策そのものが連盟本部で根本から
見直されているのかもしれない」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010340a13">
「六波羅幕府の存立を許容し、あるいは別の
新政府を立てさせて、大和の主権を承認する
方向に……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010350b00">
「……まさか！
　我々に相談もなく――」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010360a13">
「反対するのがわかっている相手にいちいち
意見を聞くかい、ウィロー少将？
　いや君ならそうするかもしれないが。本部
の連中にそこまでの実直さを期待するかね？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010370b00">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010380a13">
「何もせず、待っていれば……
　訪れるのは情報ではなく、連盟本部からの
一方的な通達だよ」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010390a13">
「一切の武力行使を禁ずる、という」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010400b00">
「……キャノン？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010410b03">
「……必ずそうなると決まったわけではあり
ません。
　ただ、可能性はあります」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010420a13">
「その可能性が当たってしまった場合、もう
我々には何もできないな。
　十年か二十年か、それとも半世紀か、次の
機会を待たねばならなくなる」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010430b00">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010440b03">
「ウォルフ教授。
　少将閣下の不安を煽るのはやめて頂きたい
のですが」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010450a13">
「失礼。
　だが、これは忠告なのだよ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010460a13">
「キャノン中佐、君が述べた通り、すべてが
――入念に準備した計画のすべてがぶち壊し
になってしまう危険は現実的に存在するのだ。
　しかも決して低くはない可能性だ」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010470a13">
「いや、むしろ……高い。
　僕はこの時点で鍛造雷弾の使用が差し止め
られたという事実に非常な危険を感じ取らず
にはいられないよ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010480b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010490a13">
「賭けるかね？　同志よ……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010500a13">
「我々は運命と戦おうとしていた。
　しかし<RUBY text="・・">戦う</RUBY>のはもうやめて、<RUBY text="・・・">賭ける</RUBY>ことに
するのかな？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010510a13">
「今、状況の変化をぼんやり待つというのは
そういうことだよ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010520b03">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010530b03">
「教授。つまり……どうしろと？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010540a13">
「戦いを始めよう」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010550a13">
「六波羅を攻撃するのだ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010560b00">
「……教授、我々には独断で開戦する権限が
ありません」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010570a13">
「そこは有事法制に従おう。
　六波羅軍から攻撃を受けたので応戦を開始
する――<RUBY text="・・・・・・">ということに</RUBY>しておけばいい」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010580b03">
「偽装工作ですか？
　それも時間が必要ですよ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010590a13">
「面倒なことはしなくていい。
　誰に対して偽装するのだ？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010600a13">
「連盟本部から派遣されてくる調査団か？
　君達は大和占領を成し遂げた後で、そんな
ものを受け入れてやるつもりかね？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010610a13">
「即座に次の行動を起こすのではなかったか？
　<RUBY text="ネオ・ブリテン">新大陸</RUBY>の同胞と共に」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010620b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010630a13">
「電撃作戦で六波羅を殲滅するまでの間だけ
誤魔化せればいいのだ。
　口先で充分だよ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010640b00">
「しかし、鍛造雷弾は今――」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010650a13">
「通常戦力があるだろう？
　雷弾抜きでも、ＧＨＱの保有する軍事力は
六波羅を上回る」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010660b00">
「そうですが……キャノン？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010670b03">
「……確かに、鍛造雷弾投下に失敗した場合
のための<RUBY text="サブプラン">補完計画</RUBY>は用意されています。
　そちらの最終訓練を明日行う予定でした」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010680a13">
「なら丁度いいな。
　訓練ではなく、<RUBY text="・・">本番</RUBY>にしてしまおう」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010690b03">
「それは、相当の無理が生じます。
　結果としてこちらの損害が大きく――」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010700b03">
「いえ、<RUBY text="・・・・">勝てない</RUBY>可能性すらあります。
　負けるとまでは言わずとも。こちらが企図
する、敵軍主力の早期撃滅を果たせない恐れ
があります」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010710a13">
「苦戦する、と？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010720b03">
「ええ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010730b00">
「そうだな……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010740a13">
「好都合ではないか」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010750b03">
「……何ですと？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010760a13">
「戦況が不利になったら、それを口実に鍛造
雷弾の使用許可を求めれば良いのだ。
　連盟本部も大規模な増援を派遣するより、
お手軽な方を望むだろう」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010770b03">
「……教授。
　少し、無謀が過ぎませんか？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010780b00">
「いや……いや！
　そう決め付けたものでもないぞ、キャノン
中佐」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010790b03">
「閣下？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010800b00">
「我々の独断で開始するにせよ……
　一度戦端が開かれてしまえば、それは連盟
――国際統和共栄連盟の戦争になる」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010810b00">
「世界の守護者たる女王陛下の名を背負った
聖戦になるのだ。
　敗北は許されない」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010820b00">
「不利な情勢での講和なども有り得ない。
　我々のやりかたに対して疑念があってもだ。
<RUBY text="・・・・・・・・・・・・">とにかくまずは勝ってから</RUBY>、連盟の高官ども
ならそう考える」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010830a13">
「その通りだとも、ウィロー少将。
　それに問題は体面のことだけではない」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010840a13">
「対ロシア政策の面から見ても、連盟が敗北
して大和から叩き出されるような結末は絶対
に受け入れられないはずだ。
　違うかね？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010850b00">
「はい、教授。間違いありません。
　そうだ……とにかく戦争を始めてしまえば、
連盟としては勝つしかなくなる」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010860b00">
「必要に応じて鍛造雷弾も使える！
　我々が六波羅に敗れることはない！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010870b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010880b00">
「我々の独走は戦後の追及を免れないだろう。
　が、これも教授の言われる通り――そんな
ことを恐れる必要はない」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010890b00">
「我々が女王陛下に対して忠実な騎士として
振舞うのは、大和征服を終えるその瞬間まで
のことに過ぎないのだからな！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010900a13">
「うむうむ。
　何も問題はなさそうじゃないか？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010910b00">
「はい。
　どうだ、キャノン？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010920b03">
「…………。
　進駐軍の指揮権については？　最高司令官
はここにいる三人の誰でもなく、現在休暇中
の元帥殿ですが」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010930a13">
「ことが済むまで、そのまま休暇を楽しんで
いてもらおう。
　帰還手段をこちらで用意しなければ、関東
に戻りたくても戻って来られまい」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010940b00">
「一週間やそこらは時間を稼げますね。
　その間は、私が事実上の最高司令官代行」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010950b00">
「各軍団長は私より階級こそ上ですが、問題
なく動かせます」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0010960b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010970b00">
「後は、行動開始のタイミングだな。
　最終訓練用の準備が出来ているとはいえ、
流石に明日の決行は無理があるか……？」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0010980b00">
「一日遅らせて、準備を徹底した方がいいか」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0010990a13">
「いや――」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011000b03">
「やるならすぐです、閣下」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011010b00">
「キャノン？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011020b03">
「宣下式典のために六波羅の戦力の大部分が
普陀楽へ集結するのを待ち、鍛造雷弾で一掃
するのが本来のプランでした。
　が……当面、雷弾を使えないなら」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011030b03">
「むしろ戦力が集中しない内に叩くべきです。
　小弓、古河、篠川、堀越の四公方府そして
普陀楽城とを分断し、各個に撃破する……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011040b00">
「プランＣ３だな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011050b03">
「はい」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011060b00">
「補給物資は」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011070b03">
「初動を支えるだけの量は既に各部隊が保有
しています。
　その後は――横浜・横須賀との補給ライン
を作戦通りに構築できれば」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011080b00">
「……良し！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011090b00">
「そのプランでいこう。
　構わないな、キャノン？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011100b03">
「…………。
　ええ、ウィロー少将」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011110b03">
「やりましょう」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0011120a13">
「うむ。戦いを始めよう！
　我々の勝利のために！」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0011130b00">
「はい、ウォルフ教授。
　我々の勝利のために！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011140b03">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011150b03">
（<RUBY text="・・">我々</RUBY>、か）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0011160b03">
（同じ意味ならいいんだがね……）

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_002.nss"