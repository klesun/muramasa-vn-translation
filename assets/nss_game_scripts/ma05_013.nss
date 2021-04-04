//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_013.nss_MAIN
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
	#bg033_湊斗家一室_01=true;
	#bg047_景明故郷町a_01=true;
	#bg001_空a_03=true;

	#ev128_病床の光_e01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_014.nss";

}

scene ma05_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_012.nss"

//◆町
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　………それから二週間余りの日々は、<RUBY text="はやて">疾風</RUBY>のように
過ぎ去った。

　本家を説き、
　浪人集団の入植に不承不承の許諾を得、

　養母と共に、町の人々に説明し、
　おおむねは喜ばれ、

　山に戻った首領とは会う機会が無かったものの、
〝山賊〟の襲来はぱったりと途絶え、

　町はしばらくぶりの平穏を取り戻し、
　本家は、俺がそれに貢献した事を認めてくれ、

　約束通り、
　独逸の医師を招聘するべく手配し、

　そして。
　数々の器具と人員を伴い、高名な博士が大和の田舎
町を訪れ――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg033_湊斗家一室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nwメンゲレ博士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130010e019">
「どうして、もっと早く呼んで頂けなかった
のか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
　メンゲレ博士は――正しくはその後ろの通訳が――
重苦しい声で慨嘆した。
　施すべき医療は全て終わったと、そう告げてきた後
のことだった。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev128_病床の光_e01.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
　光の症状は見るも明らかに改善している。
　抜け落ちた頭髪も削げ落ちた肉も戻ってはいないが、
しかしこれまで常に付き纏っていた死の影、あの絶望
の気配とでも呼ぶべきものが何処かへ失せている。

　獣じみた唸り声も、もうその口腔から聞こえてくる
ことはない。
　呼吸は至極穏やかなものだ。

　……だが。
　瞳だけは、何も変わっていなかった。

　暗く。
　虚ろで。
　何も見ていない瞳。

　心の在り処が窺えない<RUBY text="ガラス">硝子</RUBY>色の双眸。
　それは――そのままだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

	SetNwC("cg/fw/nwメンゲレ博士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130020e019">
「この<RUBY text="ジーバス・ベー">擬似菌性鉱毒病</RUBY>の恐ろしさのひとつは
絶え間ない苦痛にあります。投薬で抑えるに
も限度がある。
　常軌を逸した激痛は患者の精神を蝕み――」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130030e019">
「治療が遅れれば遅れただけ、深刻な被害を
及ぼします。
　記憶の混乱そして喪失、人格の変貌、知能
の退行、分裂症状……」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130040e019">
「最終的には廃人化」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130050a00">
「…………。
　先生……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130060a00">
「妹は」

{	NwC("cg/fw/nwメンゲレ博士.png");}
//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130070e019">
「……」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130080e019">
「一年もの時間、重篤な患者がこの国の医療
レベルで生き延びてこられたのは驚異的です。
　ご家族の献身的な看護に加え、患者本人の
心身が強靭であったこともあるでしょう」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130090e019">
「ですから、断定的な事は申し上げません。
　奇跡的に回復を遂げる可能性もあります」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130100e019">
「……肉体的には当面、心配はいりません。
　体力低下に起因する合併症だけが気掛かり
ですが、その危険も時間を掛けて肉体を回復
させてゆくことで克服が可能でしょう」

//【ｅｔｃ／メンゲレ博士】
<voice name="ｅｔｃ／メンゲレ博士" class="その他男声" src="voice/ma05/0130110e019">
「私にできることは、ここまでです」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130120a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆夜
//◆縁側？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg053_湊斗家の庭_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　奇跡。

　その一語について深く考えた事など無かった。
　今日が初めてだ。

　そうして、気付いた事がある。
　奇跡。何やら耳に心地良いこの単語は、それを必要
としない者にとっては言うなれば夏場の冬着――いつ
か訪れる冬の寒さに耐える力を保証する心強いもので。

　必要とする者にとっては、冬になってから箪笥の鍵
を失くしたことに気付いて取り出せずにいる無意味な
<RUBY text="セーター">編服</RUBY>のようなものだ。
　実は手の届かぬ所にあるのだと知って、唖然とする。

　希望の所在を示すものでは決してない。
　むしろ、その逆だ。

　奇跡が示すものは……
　そこに至るまでの、絶望的な距離だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　<RUBY text="・・">奇跡</RUBY>。
　どうすれば、それを手にできるのかがわからない。

　自分がどうすればいいのか、わからない。
　これまでは違った。メンゲレ博士を呼ぶという明確
な目的があった。本家と約束した後はそのための手段、
山賊問題の解決が目的になった。

　今はその目的がない。
　いや、目的はあるが――目的地までの道筋がわから
ないのだ。

　どうすれば……
　光の心を取り戻せる？

　……そもそも。
　本当に、取り戻せるのか？

　
　　　　　――どうして、もっと早く――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　胸に<RUBY text="よ">過</RUBY>ぎった一言は、博士の声の回想か。
　それともただの自責か。

　……もっと早く。
　もっと早く、博士を招いていたら。

　こんな事にはならなかったのではないか。

　光が――手遅れになる前に、
　間に合っていたのではないか。

　……俺が……
　もう少し、努力していたなら！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st統_通常_私服.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【統】
<voice name="統" class="統" src="voice/ma05/0130150b46">
「よっ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130160a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　唐突に肩を叩かれ、顔を上げる。
　……上げてから気付いた。いつの間にか俺は俯いて、
地面を見詰めていた。

　そのまま突っ伏す前に俺を引き止めてくれたのは、
養母だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【統】
<voice name="統" class="統" src="voice/ma05/0130170b46">
「どした。
　何を暗ぁい顔してる」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130180a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　とぼけたような顔と声。
　それが作られたものだと一目でわかるだけに、正視
するのが辛かった。

　見合ったまま話す勇気はなく、視線を元へ戻す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130190a00">
「……申し訳ありません。
　統様」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130200b46">
「なんで謝る？　息子」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130210a00">
「自分の力が足りませんでした。
　もう少し自分に能力があれば……もう少し
早く博士を呼べた」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130220a00">
「もう少し早く光を治療してやれて……
　手遅れにならずに済んだ」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130230b46">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130240a00">
「申し訳ありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　他に言葉がなく、そう口にする。
　益体もない、無意味な謝罪を。

　湊斗家に引き取られ、路傍に果てるべき命を生かさ
れて二十余年。
　その恩は形容しようもなく大きい。

　それに対して、俺の報いるところの少なさたるや。
　大事な家督継承者を救うことさえできなかった。

　穀潰しにも程がある。
　どうして俺は、もう少し役に立つ生物として生まれ
てこなかったのか。人間の器量に相応しくないなら、
別に家畜でも構わなかった。

　無駄飯を食うだけの男に比べれば、その辺りの牛馬
の方が何百倍も有意義だろう……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【統】
<voice name="統" class="統" src="voice/ma05/0130250b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グッシャア。凄まじく容赦ない一撃
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se戦闘_攻撃_殴る05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(100);
	Delete("絵白転");
	CreatePlainEX("絵板写",1000);
	SetBlur("絵板写", true, 3, 500, 200, false);
	FadeFR4("絵板写",0,1000,300,0,0,40,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【統】
<voice name="統" class="統" src="voice/ma05/0130260b46">
「ばかもの」

{	FwC("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130270a00">
「……火花が見えました。統様」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130280b46">
「目が覚めたろ。
　あのな、景明」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130290a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130300b46">
「さっき、光が眠ったんだ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130310a00">
「……？」

{	SetVolume("@mbgm*", 5000, 1000, null);
	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130320b46">
「こう……普通に寝息を立ててさ。
　気持ち良さそうだった」

//【統】
<voice name="統" class="統" src="voice/ma05/0130330b46">
「この一年、無かったよな。
　あんな安らいだ寝顔は」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130340a00">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130350b46">
「だからさ……
　景明」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130360a00">
「はい……」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130370b46">
「あっさり諦めんな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　養母の叱咤は、拳と違って優しいものだったが。
　それこそ、俺の目を覚まさせてくれた。

　諦め。
　……そうか。俺は諦めていたのか。

　自分の無力に絶望するという事はつまり、
　自分にはもう何もできないと、諦めるという事。

　馬鹿な。
　諦めていい筈がない。

　俺の人生なら、諦めるのも投げるのも俺の勝手かも
しれない。
　しかし、懸かっているものは光の人生。

　勝手に投げていいわけがあろうか。
　光は……博士をして驚嘆させた程の生命力でもって、
この一年を耐え抜いたというのに！

　そう思えば、項垂れている暇さえ惜しい。
　そんな余裕があるなら――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【統】
<voice name="統" class="統" src="voice/ma05/0130380b46">
「光を助けるんだろ。
　わたしと、おまえで」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130390a00">
「はい」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130400b46">
「おまえは光を<RUBY text="・・・・">助けてる</RUBY>。
　おまえのおかげで、とりあえず光の身体は
良くなった」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130410a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130420b46">
「礼なんか言わんけどね。
　家族なら当たり前だ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130430a00">
「はい……！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130440b46">
「最後までやろうや。
　いいか、おまえは後戻りしたわけでも転げ
落ちたわけでもないんだ」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130450b46">
「前に進んでるんだ。
　そいつを信じろ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130460a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130470b46">
「立ち止まって後ろを見て、あーやっぱり別
の道にすりゃ良かった、なんてくよくよして
たってしょうがねえだろ。
　それより前だよ、前」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130480a00">
「はい。
　立ち止まっている暇などありませんでした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　養母の言葉に、強く頷く。
　そう。今すべきは、手探りででも前方へ進むこと。

　道の暗さに脅えて立ち竦んでいても、何もどうにも
ならない！
　同様の症例を収集する……そこから回復例を探し、
効果のある治療法を探る……やることは幾らでもある。

　馬鹿のように庭を眺めている間に、できることから
手を付けていくべきだった。
　……己の惰弱さにはほとほと呆れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_優しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【統】
<voice name="統" class="統" src="voice/ma05/0130490b46">
「まったく、手の掛かる子だ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130500a00">
「……はい。
　この歳になってここまで世話をお掛けする
とは。不甲斐なさに恥じ入るばかりです」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130510b46">
「恥じろ恥じろ。馬鹿息子め。
　でもまー、世話の焼ける子ほど可愛いって
ねー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　ぐしぐしと俺の頭を乱暴に撫でながら、笑う養母。
　……俺に比して、この方のなんとお強いことか。

　長年傍にいながら、この強さを見習えなかったこと
こそが恥ずかしく、腹立たしい。
　せめてこれからは、こんな面倒を掛けぬようにしな
くては。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130520a00">
「メンゲレ博士はまだ本家に逗留されている
はず。早速明日にもお会いして、光の状態に
ついてより詳しい話を伺って参ります」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130530b46">
「うんうん」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130540a00">
「とりあえず今日のところは、」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130550b46">
「うん」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0130560a00">
「どうも限界のようなので落ちます」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばた
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 5000, "#000000");

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【統】
<voice name="統" class="統" src="voice/ma05/0130570b46">
「ん？」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130580b46">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130590b46">
「あれ？
　景明、おまえなんで脳天から血がだくだく
出てんの？　しかもなんか首の骨格が愉快に
歪んでるし」

//【統】
<voice name="統" class="統" src="voice/ma05/0130600b46">
「まるでマウンテンゴリラにでも殴られたか
のよーな……」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0130610b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆夜空
	CreateTextureEX("絵背景", 5100, Center, InBottom, "cg/bg/resize/bg001_空a_03.jpg");
	Fade("絵背景", 2000, 1000, null, false);
	Move("絵背景", 12000, @0, 0, DxlAuto, false);

	SetFwC("cg/fw/fw統_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【統】
<voice name="統" class="統" src="voice/ma05/0130620b46">
「ぎゃーーーーーーーーーーーーーーー!?
　ししししっかりしろ息子よーーー！　母を
殺人犯にしてはならぬーーーー!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――


//◆場面切って
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_014.nss"