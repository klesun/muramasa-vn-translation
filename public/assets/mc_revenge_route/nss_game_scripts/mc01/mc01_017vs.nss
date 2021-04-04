//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_017vs.nss_MAIN
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
	#ev103_香奈枝演奏_b=true;
	#ev103_香奈枝演奏_c=true;
	#ev103_香奈枝演奏_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_ウィリアム・バロウズ=true;

	$PreGameName = $GameName;

	$GameName = "mc01_018vs.nss";

}

scene mc01_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_016vs.nss"

	PrintBG("上背景", 30000);
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0010e206">
「……楽しそうで結構だな。
　だが、そこまでにして頂こうか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆竜騎兵×４
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式指揮官_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_通常.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");

	CreateSE("SE01a","se人体_足音_鎧歩く04");
	CreateSE("SE01b","se人体_足音_鎧歩く04");
	CreateSE("SE01c","se人体_足音_鎧歩く04");
	CreateSE("SE01d","se人体_足音_鎧歩く04");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 1000, 1000, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);

	Move("絵演鎧２", 0, @-360, @0, null, true);
	Move("絵演鎧３", 0, @-130, @0, null, true);
	Move("絵演鎧４", 0, @150, @0, null, true);
	Move("絵演鎧５", 0, @460, @0, null, true);

	Request("絵絵鎧*", Smoothing);

	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("絵演鎧４", 300, 1000, null, true);

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆声優さんの口笛で。
//◆無理だったら「きゃっ♪」嬉しそうに。
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0020a03">
「♪」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0030e207">
「冗談みたいな絵面だな……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0040e206">
「悪夢と言い直せ。
　こんな御婦人お一人様に、ここまで侵入を
許しただと？」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0050e208">
「ちと、怠慢が過ぎましたかね。
　親王殿下の貴き御命なんて、僕らがお守り
する筋合いじゃないわけで」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0060e209">
「だが、むざむざ侵入者の手に掛けさせては
我らの恥だ……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0070a03">
「そうした責任意識はとても大切でしてよ。
　責任の無さは誇りの無さ。男の魅力もあり
ませんもの」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0080e208">
「いいこと言いますね、この姉さん」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0090e209">
「まったくだ。
　場所が場所なら、口説きに掛かるところだ
が……」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0100e207">
「この見るも無惨な鉄火場ではなァ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0110a03">
「お気に召さなくて？
　<RUBY text="ヘル・ファイヤー・ソルジャーズ">地獄の炎の戦士の皆さん</RUBY>」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0120e207">
「趣味っちゃあ、趣味だがね」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0130e206">
「よくぞまぁ……殺しも殺したり。
　そして得物は、年季の入ったその銃一丁？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0140a03">
「ええ。
　気に入りですの」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0150a03">
「でも、銃の手応えはあまり好きではないの
ですけれどね。
　人を殺す時は、やっぱり素手が一番です」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0160a03">
「こう――両手で……
　<RUBY text="くび">縊</RUBY>り殺すのが、一番」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0170e207">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0180e208">
「今、縮みませんでした？」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0190e207">
「縮んだよ……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0200e206">
「……<RUBY text="レディ">ご令嬢</RUBY>。
　人殺しがお好みで？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0210a03">
「はい♪」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0220a03">
「それはもう……
　何よりも！」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0230e206">
「……殺されるのは？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0240a03">
「あぁ、忘れておりました。
　それはきっと、殺すよりも素敵でしょうね」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0250a03">
「想像するだけでときめきます」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0260e206">
「良かった。安心したよ。
　職務上、俺は殺されるわけにはいかないが、
殺してやることなら何とかできそうなのでね」

//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0270e206">
「――聞いての通りだ。
　ネジが一本どころじゃなく緩んじまってる
この牝犬様に、きついのを一発見舞って差し
上げろ」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0280e209">
「諒解」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0290e208">
「何だか殺しちまうにはちょっと惜しい<RUBY text="ひと">女性</RUBY>
ですけどねえ？」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0300e207">
「お前の趣味を疑うぜ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆竜騎兵、抜刀
	CreateTextureEX("絵演鎧抜刀２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧抜刀３", 600, Center, InBottom, "cg/st/3d九四式指揮官_立ち_抜刀.png");
	CreateTextureEX("絵演鎧抜刀４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧抜刀５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");

	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	CreateSE("SE01b","se擬音_雰囲気_抜刀01");
	CreateSE("SE01c","se擬音_雰囲気_抜刀01");
	CreateSE("SE01d","se擬音_雰囲気_抜刀01");

	SetVertex("絵演鎧抜刀*", Center, bottom);
	Zoom("絵演鎧抜刀２", 0, 900, 900, null, true);
	Zoom("絵演鎧抜刀３", 0, 840, 840, null, true);
	Zoom("絵演鎧抜刀４", 0, 1000, 1000, null, true);
	Zoom("絵演鎧抜刀５", 0, 840, 840, null, true);

	Move("絵演鎧抜刀２", 0, @-360, @0, null, true);
	Move("絵演鎧抜刀３", 0, @-130, @0, null, true);
	Move("絵演鎧抜刀４", 0, @150, @0, null, true);
	Move("絵演鎧抜刀５", 0, @460, @0, null, true);

	Request("絵絵鎧*", Smoothing);

	CreatePlainSP("絵板写", 610);
	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("絵演鎧抜刀３", 0, 1000, null, false);
	Wait(50);
	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("絵演鎧抜刀５", 0, 1000, null, false);
	Delete("絵演鎧３");
	Delete("絵演鎧５");
	FadeDelete("絵板写", 150, true);

	CreatePlainSP("絵板写", 710);
	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("絵演鎧抜刀２", 0, 1000, null, false);
	Delete("絵演鎧２");
	FadeDelete("絵板写", 150, true);

	CreatePlainSP("絵板写", 810);
	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("絵演鎧抜刀４", 0, 1000, null, true);
	Delete("絵演鎧４");
	FadeDelete("絵板写", 150, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0310a03">
「あらあら。
　みなさんおそろいで、わたくしを悦ばせて
くださるとおっしゃる？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0320a03">
「けれど死の愉しみは一度きり。
　わたくしとしても相手は選ばせて頂かない
と困ります」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0330e206">
「俺たちでは不満だと？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0340a03">
「いささか役不足というものでしょう」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0350a03">
「あ、今のは謙譲の表現でしてよ。
　文法ミスではなくってよ！」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0360e206">
「ふん。
　お前のような女に殺された兵卒どもにも、
不満はあったろうよ」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0370a03">
「失礼なっ。
　こんな<RUBY text="イケイケギャル">超絶美女</RUBY>をつかまえて」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0380e206">
「だが奴らは不満を呑んだ。
　ああそうさ。そういうものだ。結局この世
の中、力のある者が自分の好みを押し付ける
ようにできている」

//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0390e206">
「これから俺がお前にそうしてやるようにだ。
　文句はなかろう？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0400a03">
「……そう。
　結構でしてよ？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0410a03">
「たしかに、力の強い者には刃向かえません
ものね。それはとても納得のゆく<RUBY text="ルール">正義</RUBY>。
　そう……それが<RUBY text="あなたがた">六波羅</RUBY>のルール」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0420a03">
「だからわたくし、あなたがたの相手をする
時は同じルールを自分に課していましたの。
　六波羅への敬意を表して。これまでずっと
……ええ、もちろん今もそう致しましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);

//◆ＥＶ：香奈枝＋コントラバス
	CreateWindow("絵窓", 10000, 0, 138, 1024, 300, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/kana", 11000, 0, Middle, "cg/ev/resize/ev103_香奈枝演奏_bm.jpg");
	Move("絵窓/kana", 0, @-200, @-200, null, true);

	Move("絵窓/kana", 2000, @-200, @+100, Dxl1, false);

	Zoom("絵窓", 1500, 1000, 1000, null, true);

	SetNwC("cg/fw/nw竜騎兵Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0430e208">
「……？　楽器？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0440e206">
「……何の真似だ？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0450a03">
「最後に一曲。
　そのくらい、許してくださるでしょう？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0460e206">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0470a03">
「これでお別れなんですもの」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウィリアム・テル序曲のコントラバス独奏アレンジ
//◆終了待ち
	Zoom("絵窓", 1500, 1000, 2000, null, true);
	CreateTextureSP("絵EV100", 9000, Center, Middle, "cg/ev/ev103_香奈枝演奏_b.jpg");

	FadeDelete("絵窓/kana", 1000, true);
	Delete("絵窓");

//あきゅん「演出：ユーザビリティ調整のため演出保留」
/*
	SoundPlay("@mbgm07",0,1000,false);//ダミー注意？
	$残時間=RemainTime("@mbgm07");
	WaitKey($残時間);

*/
	SoundPlay("@mbgm07",0,1000,true);

	$所有 = RemainTime("@mbgm07");
	$プレイサウンドウィリアム = true;

	$SYSTEM_l_button_down = false;
	$SYSTEM_keydown_enter = false;

	while($プレイサウンドウィリアム){

			if($SYSTEM_l_button_down || $SYSTEM_keydown_enter){
				CreateColorEX("絵黒幕１", 15000, "Black");
				SetVolume("@mbgm07", 1500, 0, null);
				Fade("絵黒幕１", 1000, 1000, null, true);
				WaitPlay("@mbgm07*", null);
				WaitKey(1000);
				FadeDelete("絵黒幕１", 1000, true);
				$プレイサウンドウィリアム = false;
			}
				$現タイム = PassageTime("@mbgm07");
			if($現タイム == $所有){
				SetVolume("@mbgm07", 1000, 0, null);
				$プレイサウンドウィリアム = false;
			}
			if($SYSTEM_skip){
				SetVolume("@mbgm07", 1000, 0, null);
				$プレイサウンドウィリアム = false;
			}
	}


	SetVolume("@mbgm*", 1000, 0, null);

	SetNwC("cg/fw/nw竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0480e207">
「自分への<RUBY text="レクイエム">鎮魂曲</RUBY>にしちゃ、妙な選曲だな」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0490e206">
「……満足したか？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0500a03">
「ええ。
　とても満足――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ガリーン。コントラバス、鎧パーツに分離
//◆香奈枝の周囲に
	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Delete("絵EV*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev103_香奈枝演奏_c.jpg");
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0510a03">
「――だから。
　あなたがたも、満足させて差し上げる」

{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0520e209">
「…………何だと!?」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0530e208">
「つ――劒冑!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲ガキーン。
//◆贋弓聖バロウズ
//◆右手に長剣、左腕にシールドボーガン
	#av_ウィリアム・バロウズ=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	CreateTextureEXadd("絵ＥＶ覆", 4010, Center, Middle, "cg/ev/ev103_香奈枝演奏_d.jpg");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev103_香奈枝演奏_d.jpg");

	Fade("絵ＥＶ覆", 0, 750, null, true);
	Zoom("絵ＥＶ覆", 0, 1250, 1250, null, true);

	Zoom("絵ＥＶ覆", 3500, 1000, 1000, DxlAuto, false);
	FadeDelete("絵ＥＶ覆", 3500, false);
	FadeDelete("絵色白", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0540a03">
「言い忘れていましたけど。
　この〝<RUBY text="バロウズ">贋弓聖</RUBY>〟の<RUBY text="コンセクレーションテーマ">装甲楽曲</RUBY>は、わたくしの
敵――つまりあなたがたのための<RUBY text="レクイエム">鎮魂曲</RUBY>」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0550a03">
「どうやらお好みではなかったかしら？
　けれど、わたくしの方が強いもの。力ずく
で好みを押し付けてしまいましょう」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0560a03">
「よろしくて？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0570e206">
「斬れェッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,1500);
	SL_rightdownfade2(10);

	WaitPlay("SE*", null);

	ClearWaitAll(0, 0);

..//ジャンプ指定
//次ファイル　"mc01_018vs.nss"

}


