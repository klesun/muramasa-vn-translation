//<continuation number="1070">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_003.nss_MAIN
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
	#bg066_普陀楽城内のどか_01=true;
	#bg069_普陀楽城内広間_01a=true;
	#bg027_普陀楽評議の間_01=true;
	#ev803_戦争マップ１_a=true;
	#ev803_戦争マップ１_b=true;
	#ev803_戦争マップ１_c=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev124_江ノ島航空図_c=true;
	#ev804_戦争マップ２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_004.nss";

}

scene md04_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_002.nss"

//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

//あきゅん「演出："md04_006.nss"の時間がまだ午前五時五七分なので夜にしました」
	OnBG(100, "bg066_普陀楽城内のどか_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm19", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　もはや舞殿宮どころではなく、俺と茶々丸は建朝寺
の包囲を解いて普陀楽へ馳せ戻った。
　小弓公方も別途帰還している筈である。

　途上、異貌の男に出会った。
　俺達の帰りを待ち構えていたようだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆城内
//◆常闇斎


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg069_普陀楽城内広間_01a.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030010b37">
「――以上が、ウォルフ教授からの連絡です」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030020a00">
「…………」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030030a07">
「そーゆーわけかよ……。
　くそ。面倒なことになった！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030040a07">
「どこの誰様が余計な邪魔入れやがったんだ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030050a00">
「鍛造雷弾が使えない、となると――」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030060a07">
「あてらの目論見はぶっ潰れるね。
　六波羅は困らないし、進駐軍だってまとも
な勝負で勝てるならあえて雷弾を使わなくて
もいいだろうけど、<RUBY text="・・・・">あてらは</RUBY>困るね」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030070b37">
「あれが鍵ですから。
　夜明けを導くための……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030080a00">
「ならばどうする？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030090a07">
「ウォルフのお膳立てに従うしかないよ。
　抗戦する」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030100a07">
「連盟本部が鍛造雷弾の使用を決断する状況
を作り上げる」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030110b37">
「進駐軍の攻勢を凌ぎ切り、膠着状態に持ち
込むということですね」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030120a07">
「今日は……一一月三〇日か」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030130a07">
「御姫が目覚めるのは一二月四日だ」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030140b37">
「あと四日ですか。
　丁度良いといえば、丁度良い長さ……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030150b37">
「それだけの時間を掛けても普陀楽を陥とせ
ないとなれば、決戦力の投入を決意させるに
は充分でしょう」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030160a07">
「だな。
　そこんところのタイミングをうまく合わす
のはウォルフの仕事だ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030170a07">
「あてらは四日間、普陀楽を守り切る」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030180b37">
「ええ……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030190a00">
「…………。
　できるか？　それが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　国際連盟大和進駐軍――その実態は大英連邦軍。
　つまりは世界最強、最新装備の軍事力。

　六年前……
　六波羅は戦わずして敗北を認め、その軍門に下って
いる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030200a07">
「やるしかないよ。
　……やるしかないさ、お兄さん」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030210a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030220a00">
「そうだな。
　やるしかない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　他に道が無いのなら。
　唯一つの道を、ひた駆けるのみである。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm20",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　評議の間に、古河、小弓、堀越の公方が集う。
　が……一人、篠川公方の姿がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030230a07">
「獅子吼はどうした？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030240a08">
「もう会津へ飛んだわ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030250a09">
「篠川からの援軍が、どれだけ早く普陀楽へ
着くか……。
　そこが勝敗の分かれ目となるゆえ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030260a07">
「そっか」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030270a09">
「しかし、やられ申したな。
　邦氏殿下への大将領宣下によって六波羅が
再起を果たした時こそ、進駐軍は戦う意味と
勝つ意味とを得るのだと思い決めておった」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0030280a09">
「よもや、その前に仕掛けて来ようとは……」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030290a08">
「ええ。
　綺麗に裏をかいてくれたわ、<RUBY text="やつら">ＧＨＱ</RUBY>！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030300a09">
「確かに軍事的には兵力が分散している内に
叩く方が有利……しかし<RUBY text="われら">六波羅</RUBY>を対等の相手
などと思っておらぬ奴らのこと、必ずや政治
的都合の方を優先すると踏んでおったのだが」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030310a08">
「何か裏事情があるのかもしれませんわね」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030320a07">
「……それをいま勘繰ったって仕方ねえだろ。
　事情はともかく、敵さんはもう<RUBY text="そこ">相模湾</RUBY>まで
来てるんだ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030330a07">
「宣下式典に参列したくて来たようには見え
ねえし、だったら丁重にお帰り願うしかねえ。
　方法を考えようぜ。やつらに相模湾で寒中
水泳大会始めてもらうためのさ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030340a09">
「で……ござるなァ」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030350a08">
「童心様、敵の動きは？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉周辺〜相模湾地図

	PrintBG("上背景", 30000);
	CreateSE("SE01","se日常_物_紙をめくる02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵ＥＶ戦場a", 2000, Center, Middle, "cg/ev/ev803_戦争マップ１_a.jpg");
	FadeDelete("上背景", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵暗転", 1000, 100, "blind_03_00_0", true);

	Wait(500);

	CreateTextureEX("絵ＥＶ戦場b", 2100, Center, Middle, "cg/ev/ev803_戦争マップ１_b.jpg");
	Request("絵ＥＶ戦場b", Smoothing);
	Fade("絵ＥＶ戦場b", 1000, 1000, null, true);
	Delete("絵ＥＶ戦場a");

	Zoom("絵ＥＶ戦場b", 1500, 1500, 1500, AxlDxl, false);
	Move("絵ＥＶ戦場b", 1500, -251, -138, AxlDxl, true);


	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030360a09">
「進駐軍横須賀艦隊と思われる艦群は、相模
湾内防線を突破後、<RUBY text="こつぼ">小坪</RUBY>軍港を急襲。
　小坪に駐留する我が方の主力艦隊に損害を
与え――」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0030370a09">
「小坪側が反撃態勢を整えると、それを見計
らっていたように撤収。
　現在は飯島崎と大崎の間に封鎖線を張り、
小坪の残存艦隊を港に押し込めており申す」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030380a08">
「……押し込めてるだけ？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030390a09">
「さよう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030400a07">
「はァ？
　何がしたいんだあいつら」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030410a07">
「小坪の艦隊が動けなくなったらそりゃ痛い
けど。
　向こうが封鎖以外なにもしないんだったら、
艦隊を動かす必要がそもそもねえぞ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030420a09">
「むろん、他方面での行動を妨害させぬため
に封じておるのでござろうが……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030430a08">
「まさか、あいつらの狙いは鎌倉ではないと
いうの？
　他の都市を襲うつもり？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030440a07">
「んなアホな」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030450a09">
「鎌倉を占領し、普陀楽を陥とし、六波羅を
壊滅に追い込む。
　ＧＨＱが遂に動いたからには、他の目的は
考えられぬ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030460a09">
「しかし――」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030470a07">
「ならどうしてさっさと小坪港を叩き潰して
上陸してこねえのかって話だな。
　……小坪攻撃は陽動か？」

{	Zoom("絵ＥＶ戦場b", 1500, 1000, 1000, AxlDxl, false);
	Move("絵ＥＶ戦場b", 1500, 0, 0, AxlDxl, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030480a09">
「本隊は……
　横浜基地から陸路、朝比奈峠を越えて攻め
寄せてくる？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030490a08">
「勿論そちらからも来るでしょうけれど……。
　そのルートは大兵力を素早く展開するには
不都合です」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030500a08">
「本命は別かと」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030510a09">
「……で、ござるな。
　と――――なると……」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0030520a09">
「ここかの」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("上陸予想", 3000, @0, @0, "cg/ev/ev803_戦争マップ１_c.jpg");
	Request("上陸予想", Smoothing);

	Fade("上陸予想", 500, 1000, null, true);
	Move("上陸予想", 1500, -54, -51, AxlDxl, false);
	Zoom("上陸予想", 1500, 1200, 1200, AxlDxl, true);
	Delete("絵ＥＶ戦場b");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　遊佐童心の太い指が、地図上の<RUBY text="・">線</RUBY>をなぞった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030530a08">
「……湘南海岸？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030540a07">
「おいおいおい。
　そんなとこから一体どーやって大軍を上陸
させるっつーのさ。ばっかでー」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030550a07">
「と言いたいのは山々ですが、なんかそんな
時にお役立ちの兵器がありましたね？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030560a09">
「いかにも。
　揚陸艦……大英連邦では先の大戦の頃より
使われており申す」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030570a08">
「あまり有効ではなかったと聞いていますが」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030580a09">
「失敗を糧に改良したのではござらんかな。
　かの侵略国家にとっては、大いに研究する
価値のある兵器でござれば」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030590a09">
「防御設備の整った港への攻撃は多大な犠牲
を覚悟せねばならぬ。
　しかし、手薄な海岸から上陸できれば損害
はずっと少なくなる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030600a07">
「……実際、手薄だよな。
　材木座、由比ヶ浜、七里ヶ浜」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030610a07">
「がら空きってほどじゃねえけど、完璧とは
とても言えん」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030620a08">
「大規模な上陸作戦に対する防備はまったく
不十分ね。
　ＧＨＱもそれくらいは知っているでしょう」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030630a09">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030640a07">
「てことは……来るな」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030650a08">
「ええ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030660a07">
「海岸に増援を出すか？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030670a09">
「無益でござる。
　奇襲された今、すぐ動かせる充分な規模の
兵力というのがそもそもござらぬし」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030680a09">
「仮に兵力を海岸線へ展開するのに成功した
としても、我らには大規模上陸作戦に対する
迎撃の<RUBY text="ノウハウ">専門知識</RUBY>が不足しており申す」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030690a07">
「砂浜でまごついてる間に潰されるってか。
　そこまで悲観的にならなくてもいいと思う
けどな」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030700a08">
「向こうは間違いなく充分な訓練をこなして
きているわ。
　<RUBY text="・・・・">失敗の数</RUBY>で勝敗が決まるとしたら、こちら
の分が悪いわよ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030710a07">
「……そりゃ違いない」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030720a09">
「湾岸防衛は諦めるしかござらん」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030730a00">
「御無礼。
　……小坪港の封鎖を破る方法は検討しない
のですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Zoom("上陸予想", 1500, 1500, 1500, AxlDxl, false);
	Move("上陸予想", 1500, -251, -138, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　黙っていられず、俺は訊いてみた。
　どうもこの首脳達は、最初からその選択を放棄して
いる様子である。

　俺としては納得しかねた。
　何も小坪港の残存艦隊に乾坤一擲の勝負を挑めとは
言わない――近場の別艦隊に来援させ、内外から攻め
れば良いのだ。

　真逆、相模湾近海の幕府艦隊が全て小坪に集結して
いたという事はないだろう。
　そうして小坪が解放されれば、進駐軍の上陸作戦は
途端に危うくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030740a07">
「動かせる艦隊があればそうするんだけどね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030750a00">
「……無いのですか？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030760a07">
「艦隊ならあるさ。
　近場では江ノ島の高速艦隊とか」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030770a00">
「ならそれを――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　…………………………………………。

　<RUBY text="・・・">江ノ島</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆銀星号ウルトラキック。江ノ島吹っ飛び

	EfRecoIn1(18000,600);

	CreateTextureSP("ウルトラキック", 15000, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");


	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoIn1(18000,600);

	Delete("ウルトラキック");
	CreateTextureSP("江ノ島", 15000, @0, @0, "cg/ev/ev124_江ノ島航空図_a.jpg");


	EfRecoIn2(300);



	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030780a07">
「ちょっと前に<RUBY text="・・・・・・・・・・・・">わけわからんアクシデント</RUBY>で
壊滅しちゃっててねー。江ノ島の艦隊。
　復旧がまだ済んでないんだわ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030790a07">
「だもんで救援に行かせるのは無理なの」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030800a00">
「…………そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("江ノ島");
	Zoom("上陸予想", 0, 1000, 1000, null, false);
	Move("上陸予想", 0, 0, 0, null, true);

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030810a07">
「他にも艦隊はあるけどね。
　横浜・横須賀艦隊に対抗できそうな規模と
なると……房総半島南部の駐留艦隊が筆頭か
な」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030820a00">
「そちらは？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030830a07">
「動かすのはとても簡単。
　でも」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030840a08">
「……それを動かして消耗させてしまったら、
太平洋方面が丸きり無防備になるでしょう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030850a07">
「つーこと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そうか。
　進駐軍――連盟軍の戦力は、横浜・横須賀両基地に
あるだけで全てではない。

　南洋から、あるいは大陸から、来援は幾らでも押し
寄せてくる可能性がある。
　それに備えるための艦隊を、相模湾に引き込む事は
できない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030860a09">
「基本方針はこの普陀楽で敵を迎え撃つ、と
いうことでよろしゅうござるかな」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030870a08">
「はい」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030880a07">
「消去法の選択だけどな」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030890a09">
「では、我が方の戦力配置を確認いたそう。
　まず――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　古河公方主導の談義を耳で聴きつつ。
　俺は普陀楽の軍事力に関する知識を反芻した。

　第一は普陀楽城衆。
　普陀楽城主直轄の軍団だ。現在は足利四郎邦氏隷下
となる……が、彼はまだ一軍の指揮に耐える年齢では
ないため、宿老遊佐童心が実務を代行している。

　第二は古河領衆。
　古河公方府の軍兵から一部を割いて普陀楽城に駐留
させているものである。指揮は当然古河公方遊佐童心、
又はその代理の者が執る。

　第三は小弓領衆。
　小弓公方府よりの派遣軍である。他の公方府よりも
比較的早く普陀楽城へ兵力を送れる環境にあるため、
規模も他の派遣軍よりやや大きい。

　第四、堀越領衆。
　堀越公方府の派遣軍であり、指揮権は茶々丸が持つ。
堀越の富裕な財政を反映してか兵站の面で優れ、しば
しば他部隊にやっかまれる――今はどうでもいいが。

　第五は篠川領衆。
　大鳥獅子吼の指揮下、六波羅最精鋭と謳われる会津
篠川軍団より分かれて普陀楽に詰める将兵である。

　この五つの軍集団が普陀楽の常駐戦力を構成する。
　これは六波羅の中央軍であり、関東地方に存在する
軍事力として最大のものだ。

　が――それでも、独力ではＧＨＱに拮抗しかねる。
　互角に戦うには地方軍の来援を得なくてはならない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆広域地図

	CreateTextureSP("でかい地図", 1900, @0, @0, "cg/ev/ev804_戦争マップ２.jpg");
	DrawDelete("上陸予想", 1000, 100, "blind_02_01a_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　つまりは古河、小弓、篠川、堀越。
　この関東四公方からの援軍が必要である……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030900a09">
「古河への指令は先刻出しており申す。
　とは、いえ」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030910a09">
「まず無駄でござろうの」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030920a08">
「麿の小弓にも伝えていますけれど……
　ええ。期待はできませんわね」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030930a07">
「古河と小弓は位置が悪いからな。
　ＧＨＱの参謀にまともな頭があれば、手は
打ってる」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030940a07">
「小弓なんて今頃はもう小坪港と似たような
ことになってんじゃねーの？」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030950a08">
「まぁ……そうでしょうね」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030960a09">
「残るは堀越と篠川でござるが」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030970a07">
「<RUBY text="あてのとこ">堀越軍</RUBY>にもあんまし期待すんな。
　万単位の兵力をすぐさま鎌倉まで寄越せる
ような環境じゃねえんだよ、今」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030980a07">
「普通に考えて、<RUBY text="あっち">進駐軍</RUBY>に東海道を塞がれる
方が早い」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030990a08">
「……なんかやたらと岡部の反乱が祟るわね」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031000a07">
「そればっかが理由じゃないけどな」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0031010a09">
「となると、やはり」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031020a07">
「頼みになるのは獅子吼だけってこった」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0031030a08">
「…………そうね」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　大鳥獅子吼の篠川公方府軍。
　普陀楽の中央軍に次ぐ規模と実力を有する、最大の
地方軍である。

　これが普陀楽に到着すれば、六波羅とＧＨＱの戦力
比は五分に大きく近付くだろう。
　
　しかし、それには条件が一つあった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031040a07">
「獅子吼が会津にたどり着いて、それから軍
をまとめて……こっちへ引っ返してくるのに
何日掛かるかだ」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0031050a09">
「…………」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031060a07">
「どう考えても、三日じゃ無理だよなァ」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0031070a08">
「それに……
　古河公方府がいつまで健在でいるか」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　そう。
　古河公方府を押さえるため、進駐軍の一部がそちら
へ向かっているのはまず間違いない。

　古河が陥ちれば、篠川軍は鎌倉への道を失う。
　普陀楽は孤立する。

　……その時点で、敗北はほぼ確定するだろう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_004.nss"