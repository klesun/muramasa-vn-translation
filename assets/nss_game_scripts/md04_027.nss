//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_027.nss_MAIN
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
	#bg002_空a_01=true;
	#bg002_空a_02=true;
	#bg002_空a_03=true;
	#bg027_普陀楽評議の間_03a=true;
	#bg057_普陀楽城廊下_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_028.nss";

}

scene md04_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md04_026vs.nss"


//◆空→夕空→夜空
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	
	WaitKey(1000);
	CreateTextureSP("絵背景200", 900, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FadeDelete("絵背景100",1500,true);
	WaitKey(1000);
	CreateTextureSP("絵背景300", 800, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景200",1500,true);
	WaitKey(1000);
	CreateTextureSP("絵背景400", 700, Center, Middle, "cg/bg/bg027_普陀楽評議の間_03a.jpg");
	FadeDelete("絵背景300",1500,true);

//◆普陀楽

	StL(1000, @-100, @0, "cg/st/st童心_通常_私服a.png");
	StR(1100, @90, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(300, false);
	FadeStL(300, true);

	Wait(500);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270010a09">
「……膠着状態になり申したなァ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270020a07">
「制空権はある程度挽回できたが、数の差で
向こうの優位は動いてねえ。
　地上も同じ」

{	StCR(1000, @-70, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStCR(300, false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270030a08">
「海上もね。
　こちらに加わったのは、あくまで竜騎兵の
一個連隊だけだから」

{	StCL(1000, @70, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStCL(300, false);
	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270040a06">
「ふん。
　俺が篠川の全軍を連れて来援していたら、
とでも言いたいか？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270050a08">
「……そうは言わないわよ。
　それじゃ、間に合わなかったでしょうし」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270060a09">
「さよう、さよう。
　獅子吼殿はまこと良い時に来て下された」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0270070a09">
「急場を凌げたのは獅子吼殿のおかげ。
　ご功労を無にせぬためにも、今後の手立て
を思案せねばなりますまい」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270080a06">
「鎌倉の形勢を動かすなら、外から突くのが
道理というものだがな……。
　茶々丸、堀越軍はどうしている」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270090a07">
「箱根で足止め食らってるよ」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270100a08">
「室町探題に命じて畿内の兵を出させる手も
あるけど……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270110a09">
「あれは京都に睨みを利かせるのが関の山で
ござろう。
　戦力としてはあてになり申さぬ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270120a07">
「じゃあ<RUBY text="ダザイフ">鎮西探題</RUBY>か？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270130a06">
「問題が三つあるな。
　遠い、大陸方面の備え、将帥が<RUBY text="ヤツ">足利幸行</RUBY>」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270140a08">
「……動かせないわねぇ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270150a09">
「ＧＨＱの思案も気になるところでござる。
　奴らとて戦況の膠着は望まぬはず」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270160a07">
「古河にいる軍団をこっちへ呼ぶかな？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270170a08">
「有り得ない話じゃないわ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270180a06">
「だがその時はこちらも篠川の本軍を動かし、
古河を奪還して奴らの後方を扼せばいい。
　そのくらいのことならできる奴を会津には
残してきている」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md04/0270190a06">
「進駐軍の兵力とて無尽蔵ではない。
　古河を確保しつつ鎌倉に増援を送るような
芸当は難しかろうよ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0270200a09">
「さようでござるな……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0270210a08">
「そうなったら、こちらにとっては好都合ね」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270220a07">
「いえてるいえてる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);
	Delete("絵背景*");
	OnBG(100, "bg057_普陀楽城廊下_03.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270230a07">
「――けど。
　もちろん、ＧＨＱが打ってくる手はそんな
こっちゃない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　評議の後、茶々丸は言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270240a07">
「あいつらは切り札を持ってるんだから。
　楽に勝てる目が無くなった今、そのことで
頭が一杯だろーさ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0270250a00">
「だが茶々丸。
　今日が……一二月三日」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0270260a00">
「光の目覚めは四日、つまり明日だと言って
いたな？
　間に合うのか」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270270a07">
「間に合わせる。
　間に合わなけりゃ、みんな<RUBY text="・・・・">おじゃん</RUBY>だ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270280a07">
「そんな<RUBY text="オチ">結末</RUBY>にしてたまるもんかい。
　あてのためにもお兄さんのためにも御姫の
ためにも、ね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0270290a00">
「……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270300a07">
「明日、進駐軍は鍛造雷弾を使う。
　ウォルフがそうさせるはずだ……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0270310a07">
「この夜の間に」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_028.nss"