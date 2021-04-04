//<continuation number="790">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_013.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg068_普陀楽城内部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_014.nss";

}

scene mb02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_012.nss"

//◆京極屋敷
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg057_普陀楽城廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　俺が四郎邦氏の使者を名乗って岡部桜子への面会を
申し入れると、京極家の人間は面食らったようだった。
　事を大きくしたくない邦氏の意向も伝え、兎も角も
通しては貰ったが、このまま何もなくでは済むまい。

　それでも足利邦氏本人がやにわに現れるよりはまし
であったろうし、まさか忍び込むわけにもいかぬのだ
から、これは已む無き仕儀というものだが。
　邦氏にはそれとない追及の手が向く事になりそうだ。

　尤も、彼は承知しているだろう。
　その上で、望んだ筈なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　奥まった一室へ通されると、そこでは桜子姫が深く
礼をして待っていた。
　上座にあたる場所は空けられている。

　……今の俺は曲がりなりにも左近衛大将の名代なの
だから、当然の扱いではあった。
　が、居心地の悪さは何ともし難い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130010a00">
「姫」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130020b28">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　背後の戸が閉められたのを確認した上で、低く呼び
掛ける。
　きょとんと<RUBY text="おもて">面</RUBY>を上げる姫と、俺の視線が重なった。

　暫時の空白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130030b28">
「あら……まぁ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130040a00">
「どうも、御縁があります様子」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130050b28">
「本当に。
　でも、これはどういう……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130060a00">
「御不審は当然と存じます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　自分で自分を顧みても困惑が拭えない程だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130070a00">
「簡単に説明させて頂きますと――」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130080b28">
「とりあえず、お茶でも淹れましょうか。
　あっ、どうぞお続け下さい」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130090a00">
「お構いなく。
　では」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　適当に座って、俺は邦氏との奇縁を手短に説明した。
　妙といえば随分と妙な話であった筈だが、あの高貴
な少年が蹴球を嗜む様は彼女も目撃していたので理解
させるに難は無かった。

　話しつつ、視線を流して部屋の様子を観察する。
　別に鉄格子で囲われている事はないし、窓が明かり
取りの小窓だけなどという事もない。

　普通の部屋だった。
　ここが彼女の居室ではないにしても、部屋に慣れた
様子からして居住空間の一部であるのは確かと思える。
となると、姫の環境はそう厳しいものでも無さそうだ。

　先日の通り、散歩なども許されているらしい。
　
　……だがこの緩やかな待遇は、決して彼女の心身の
健康を思いやっての事ではないだろう。

　六波羅は桜子姫と反幕勢力との接触を警戒している。
なればこそこの普陀楽に置いたのだ。
　しかし一方で期待もしている筈だ――両者が接触し
行動を起こせば、一網打尽だと。

　桜子の身辺を手薄にしてもさして問題はない。<RUBY text="・・">結局</RUBY>
<RUBY text="・・・・">のところ</RUBY>、この城内から脱出するなど不可能だからだ。
　必要もない厳戒態勢を捨て、大魚を誘い出す釣り餌
としている。全く、六波羅はいちいち狡猾であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130100b28">
「そうですか……。
　それで、あの時」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130110a00">
「はい。
　我ながら、出過ぎた振舞いをしたものです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　彼女自身はその辺りを諒解しているのか――
　笑顔を作ってみせても隠せぬ目元の疲れを見れば、
聞くまでもなかった。

　饗された茶を啜る。
　心地良い苦味が今は切ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130120a00">
「……ともあれ、その件で殿下の知遇を賜り。
　<RUBY text="こたび">今度</RUBY>こうして、使者の役目を与えられたと
いう次第です」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130130b28">
「使者……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　桜子姫の視線がそちらへ動く。
　今初めて気付いたのではないだろう。

　携えてきた、一鉢の花。
　俺はそれを改めて取り上げ、姫の前へ据えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130140a00">
「邦氏殿下より、姫へ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　ふと、口上が途切れる。
　下賜の品……と続けるつもりだったのだが。

　礼則の上ではそれで正しい。
　が、あの少年の真意を伝えていないような気がした。
　
　半瞬迷ったすえ、より単純な言葉に修正する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130150a00">
「贈り物でございます」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130160b28">
「これを……？
　あの方が？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130170a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　紫色の花だ。
　一見すると<RUBY text="すみれ">菫</RUBY>に似ているが、葉や茎の形状が違う。

　大和ではまだ、余り馴染みのないものかもしれない。
　解説を加えようと口を開きかけたところで、桜子姫
が小首を傾げて呟いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130180b28">
「<RUBY text="アラセイトウ">紫羅欄花</RUBY>……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130190a00">
「御明察」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130200b28">
「写真でしか見たことがありませんでした。
　本物はこんな色をしていますのね……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130210a00">
「赤や白の種もあると聞き及びます」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130220b28">
「そう……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　紫羅欄花。洋名をストック。
　南欧原産で、古くは薬用にもされたらしい。

　匂いは強い方だろう。
　<RUBY text="む">噎</RUBY>せ返る程ではないが、余り鼻を近づけると酔って
しまいそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130230b28">
「この花が咲くのは……春先ではありません
でした？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130240a00">
「はい。
　これは城内の職人が育てた早咲きです」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130250b28">
「そんなものが……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130260a00">
「邦氏殿下の<RUBY text="おおははぎみ">御祖母君</RUBY>、<RUBY text="ようとくいん">養徳院</RUBY>様がこの花を
いたく好まれているとか」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130270b28">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　岡部桜子は不思議そうな顔をした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130280b28">
「殿下が好まれて、育てさせたものではない
のですね？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130290a00">
「は。
　姫にお贈りする為、養徳院様に乞うて貰い
受けてこられたようです」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130300b28">
「わざわざ、この花を選んで」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　紫の花弁を見詰める。
　何か、記憶を掘り起こしているふうであった。

　俺は黙して待った。
　こちらから賢しらに舌を動かす必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130310b28">
「……確か、紫羅欄花の花言葉は……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130320a00">
「……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130330b28">
「永遠の美しさ。愛着。幸福……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130340a00">
「他に、未来へ進む力、思いやり……
　などもございますとか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　花言葉などというものは国によって、文化によって
様々だ。
　それらが混淆し、現在では大抵の花は複数の異なる
意味を持つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130350b28">
「……未来へ進む力。
　思いやり……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130360a00">
「……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130370b28">
「それが、殿下からわたくしへの下さり物」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130380a00">
「はっ……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130390b28">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130400a00">
「厚かましいと、お思いになられますか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　不躾であろう一言を、敢えて投げる。
　家亡き姫の整った眼が、驚きを示して<RUBY text="みは">瞠</RUBY>られた――
だがそれも数秒の事。

　彼女の脳裏には、先日の一条の発言があったのかも
しれない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130410b28">
「ええ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130420a00">
「至極当然の事と存じます」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130430b28">
「勝者は……頭を下げて和を願い、<RUBY text="いくばく">幾許</RUBY>かの
矜持を失っても、残るものはまだ多く有りま
しょう。
　しかし敗者は……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130440b28">
「戦った、という矜持以外に何も無いのです。
　これを失えば、もう何も残りません」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130450a00">
「理解できます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　本心から、俺は首肯した。
　全く、姫の心情には納得のゆかぬ部分がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130460b28">
「ならば……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130470a00">
「殿下もそれは、御承知の上です」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130480b28">
「殿下が？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130490a00">
「憂慮しておられました。
　これは自分の勝手ではないか、と」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130500b28">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130510a00">
「それでも殿下は自分を遣わす御決断を下さ
れました。
　その御心中を、忖度する事が許されるので
あれば――」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130520a00">
「おそらく殿下は、勝者たる足利一門の家長
としてではなく。
　姫と同じ所に在る者としてこの花をお贈り
したかったのではないかと、愚考致します」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130530b28">
「同じ所……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130540a00">
「紫羅欄花の花言葉には、〝同情〟もござい
ます」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130550b28">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130560a00">
「聞きようによっては耳障りのよろしくない
言葉ですが。殿下は<RUBY text="こうざ">高座</RUBY>から手を差し伸べて
いるのではなく、姫の隣に立っているのだと、
どうか御理解頂けませぬか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　突拍子もないと言えば、実に突拍子もない言い草だ。
　足利の御曹司と岡部の遺女とでは、わざわざ比べる
のも馬鹿馬鹿しいほど立場が違い過ぎる。

　だが桜子姫は、少なくとも一言のもとに退けはしな
かった。
　紫羅欄花に目を落とし、沈思の様子を見せている。

　先日の、ほんの擦れ違いのような出会いを思い起こ
しているのだろうか……。
　姫の瞳の中に、少年の上気した頬を見たような気が
した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130570b28">
「……改さん」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130580a00">
「はっ」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130590b28">
「邦氏殿下は、どのような御方でしょうか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130600a00">
「……自分も、あれこれと語れる程には存じ
上げません。先日――姫も居合わされました
あの折と、今日こちらへ参ります前にお会い
したのとが、面識の全てであります故」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130610b28">
「そうですか……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130620a00">
「ただ。
　そればかりの縁故しかない自分を、姫への
使者として立てられた」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130630a00">
「……立てねばならなかった。
　そういうお立場の方ではございます」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130640b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　更に言葉を費やすのは避けた。
　事実以外は語りたくなかったからだ。俺は姫を丸め
込むために来たのではない。

　あの少年の姿と影に、思うところはもっと多くある。
　だがそれは、俺の口から姫の耳に吹き込んでも、何
の意味もない事だろう。

　姫が自ずと知ってこそ真実となる。
　そして、それは――遠い道程でもないようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130650b28">
「……寂しい方なのでしょうか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130660a00">
「玉座は一人で坐すものなれば……
　傍らに人がおらぬは、道理かと」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130670b28">
「……思いやり。
　同情。
　未来へ進む力……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130680b28">
「孤独で肌寒い道のりなら、せめて<RUBY text="とも">侶</RUBY>を得て
歩もうと……。
　そうお望みなのかしら」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130690a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　返答は、頭を下げるのみに留めた。

　簡単な事ではあるまい。
　例え二人がそれを望んでも、周囲が果たして許すか
どうか――いや、到底許されまい。

　あるいは一人でゆく以上に困難な道ともなり得る。
　だが……それでも敢えて、寄り添う事を選ぶなら。

　寂しくはない。
　一人でいるよりも。少しだけ――肌の寒さは和らぐ
だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130700b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　岡部の姫は何を想うのか。
　やはり、我が家を滅ぼした本人が何を……との念が
先に立つのかもしれない。

　だとしても、俺に説得の方策はなかった。
　
　しかし。ほんの一度とはいえ、彼女は邦氏に会って
いる。

　あの時。
　足利四郎という少年の真像の一端に姫が触れていた
ならば……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130710b28">
「改さん。
　殿下に、伝言をお願いできますかしら」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130720a00">
「はっ。承ります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　何だか丸きりメッセンジャーになってしまっている
が仕方がない。
　これで事が喧嘩沙汰であったら最悪だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130730b28">
「普陀楽の日々は岩の上で<RUBY text="やす">寝</RUBY>む心地……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130740a00">
「――」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130750b28">
「わたくしの身を思いやってくださるのなら。
　どうか苔の衣をお貸し下さい、と」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……………………。

　その時、俺はどんな面相になったのか。
　そこに鏡など無かったので知る由はない。

　姫にくすりと笑われてしまう顔ではあったようだが。
　……苔の衣。粗末な衣という意味だ……<k>が。この場
合は…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130760b28">
「よろしくて？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130770a00">
「……姫。
　殿下はまだ、その、お若く……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130780b28">
「このくらいはしても、<RUBY text="ばち">罰</RUBY>は当たりませんで
しょう？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130790a00">
「はぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　何ともはや。
　意外に…………この姫君。

　悪戯好きだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_014.nss"