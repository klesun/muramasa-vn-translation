//<continuation number="1030">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_024vs.nss_MAIN
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
	#bg071_普陀楽城内張り出し_03=true;
	#bg001_空a_03=true;
	#ev956_童心装甲_a=true;
	#ev956_童心装甲_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_同田貫=true;

	$PreGameName = $GameName;

	$GameName = "mb02_025vs.nss";

}

scene mb02_024vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_023vs.nss"

//◆テラスっぽいとこ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

	Wait(200);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0010a09">
「やれ、やれ……
　ちぃと調子に乗り過ぎたかの」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0020a09">
「取り囲んでやれば諦めて投降すると思うた
がな。
　肝の太い者どもよ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0030a09">
「ま、後は常闇に任せておくか……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0040a02">
「<RUBY text="ざけ">山戯</RUBY>ろ。
　てめぇに高みの見物なんざ許すか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0050a09">
「ほぉゥ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(500,true);
	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0060a02">
「のんきな観客になりたきゃあの世へ行きな。
　この世では、あたしが認めねぇ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0070a09">
「これは、これは。
　改の奥方……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0080a02">
「綾弥一条だ。
　苗字と名前は、この順でいい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0090a09">
「それが本名かね？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0100a02">
「ああ。だがどっちだっていいだろ。
　どっちだろうと、てめぇは死ぬんだ」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0110a09">
「くっくっく……」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0120a02">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0130a09">
「逃げ場を求めてここまで行き着いたという
わけでは、ないようだのぅ？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0140a02">
「追ってきたに決まってんだろ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0150a09">
「このわしをか……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0160a02">
「その頭はいい目印になった。
　暗い中でも良く光るじゃねぇか」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0170a09">
「ふぁっはっは！
　さもあろうさもあろう。常日頃からよぅく
磨いておるからのう」


{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0180a02">
「そいつを切り取ったら、この城のてっぺん
にくくりつけといてやる。
　電灯代わりになって丁度いい」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0190a09">
「ふっふぅ……。
　いや、何とも一途な殺意よのぅ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0200a09">
「それほどにこの童心坊が許せぬか」


{//◆酷薄な笑い
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0210a02">
「許さねぇ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0220a09">
「討つか」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0230a02">
「討つ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0240a09">
「我が身を裂くか」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0250a02">
「裂いて、潰して、粉にしてやる。
　臓物を引きずり出して食わせてやる。目玉
と<RUBY text="きんたま">睾丸</RUBY>えぐり取って鴉の餌にくれてやる」

{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0260a02">
「てめぇが、生きてる間にな」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0270a09">
「それは痛快だのぅ。
　しかし、何ゆえに……？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0280a02">
「何ゆえ？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0290a09">
「…………」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0300a02">
「この普陀楽には何でもあるな。
　金も、宝も、武器も、最新の機械も……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0310a02">
「だってのに、鏡は一枚も無いらしい」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0320a09">
「ぐふっ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0330a02">
「……」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0340a09">
「くふ、ふふふふふ……！」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0350a02">
「――しッ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆踏み込んで仕掛ける
//◆なんか飛んできて妨害。がしーん。
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0360a02">
「っ!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0370b40">
《御堂！　劒冑だ！》


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0380a02">
「なにィ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同田貫正国・亀形態。なんか飛んでる。
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_01_1", true);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,800,null,false);

	StL(1000, @360, @200,"cg/st/3d同田貫亀_俯瞰.png");
	Move("@StL*", 3000, @-90, @0, null, false);
	FadeStL(300,false);


	Wait(1000);

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0390a02">
「こいつ……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0400b40">
《<RUBY text="らい">来</RUBY>派か……？
　いや、<RUBY text="えんじゅ">延寿</RUBY>？》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 200, @-180, @0, Axl2, false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

//◆童心と正国
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg071_普陀楽城内張り出し_03.jpg");
	StL(1100, @-100, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転",200, 100, "slide_02_01_1", true);

	CreateSE("SE01b","se戦闘_動作_鎧_着地01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StCL(1000, @130, @350,"cg/st/3d同田貫亀_正面.png");
	Rotate("@StML*", 0, @0, @180, @0, null,true);

	Wait(500);
	Move("@StML*", 300, @0, @60, Dxl2, false);
	FadeStCL(300,true);


	CreatePlainSP("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 6, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");
	SoundPlay("@mbgm13",0,1000,true);

	SetFwC("cg/fw/fw童心_宥め.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0410a09">
「いや、恥ずかしい。恥ずかしい。
　確かにこの遊佐入道、心に鏡は据え置いて
おらんなァ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0420a09">
「いちいち過去を顧みながら生きてはおらん
なァ……。
　そんな暇もないほど、日々を楽しんでおる
からのう」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0430a02">
「…………。
　どうしてあんな真似をした？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0440a09">
「はて？」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0450a02">
「てめぇが、岡部の姫さまにやったことだ」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0460a09">
「ああ、あれか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0470a09">
「やりたかったんでの」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0480a02">
「…………。
　じゃあその前の、能楽は何だ」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0490a02">
「あの〝頼政〟は……。
　あれも全部、姫を<RUBY text="・・・・・">引っ掛ける</RUBY>ためだったっ
てのか」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0500a09">
「いや。あれはあれで、やりたかったのよ。
　頼綱公とは敵味方の立場を超えて、長年の
友であった。その非業の死を思うと、我が胸
に突き上げるものがある……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0510a09">
「心のざわめきの赴くまま、舞ってみた。
　如何であったかな？」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0520a02">
「…………。
　なら」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0530a02">
「その長年の友の骨で能面を作ったってのは、
何でだ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0540a09">
「やりたかったんでの。
　<RUBY text="・・・・・・・">おもしろかろう</RUBY>と思うて」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0550a02">
「…………」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0560a09">
「くっくっく……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0570a02">
「てめぇは……
　やりたいことは、何でもやるのか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0580a09">
「うむ！」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0590a02">
「許されると思ってんのか？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0600a09">
「誰が許さぬ？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0610a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0620a09">
「司法かな？
　いや、残念。人の法律は<RUBY text="ちから">権力</RUBY>で優る相手を
罰せられぬように出来ておる」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0630a09">
「では神仏かな？　天の法が許さぬか？
　いや、しかし……この童心坊めは事故にも
遭わず病にも罹らず、剣林弾雨も潜り抜け、
こうして生き続けておるがなァ……」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0640a09">
「さぁて。
　誰がわしを許さぬ？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0650a02">
「あたしだ」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0660a09">
「……ほゥ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0670a02">
「法律や神仏がどうだろうと知るか。
　あたしが、おまえを許さない」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0680a09">
「……一条、と申したな」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0690a09">
「おぬし、誰の命を受けて動いておる？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0700a02">
「命令なんか、誰からも受けてねえ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0710a09">
「わしの首を獲ると、どうなるのかの。
　金になるか？　それとも、地位でも貰える
かな」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//嶋：修正（みてえ）【090930】
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0720a02">
「馬鹿が。
　てめぇみたいなクズの命に、びた一文でも
払おうなんて奴がいるかよ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0730a09">
「ではおぬしは、本当に……
　<RUBY text="・・・・">その怒り</RUBY>だけなのか」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0740a09">
「義憤一つでわしを殺そうてか」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0750a02">
「そうだよ。
　<RUBY text="・・・・・・">それだけだよ</RUBY>」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0760a02">
「てめぇが許せねぇから殺す。
　このあたしと――正宗が」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵板*");

//◆一条＆正宗
	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureEX("絵演窓右/絵演右", 4100, 235, 0, "cg/bg/bg071_普陀楽城内張り出し_03.jpg");
	CreateTextureEX("絵演窓右/絵背景100", 4200, Center, InBottom, "cg/st/st一条_通常_制服b.png");
	CreateTextureEX("絵演窓右/絵背景200", 4150, Center, InBottom, "cg/st/3d正宗天牛虫_正面.png");
//	Move("絵演窓右/絵背景100", 0, -313, -405, null, true);
	Rotate("絵演窓右/絵演右", 0, @0, @180, @0, null,true);
	Move("絵演窓右/絵背景*", 0, @100, @0, null, true);
	Move("絵演窓右/絵背景200", 0, @-150, @350, null, true);

	OnSE("se人体_足音_鎧歩く03",1000);

	Fade("絵演窓右/絵背景*", 200, 1000, null, false);
	Fade("絵演窓右/絵演右", 200, 1000, null, false);

	Move("絵演窓右/絵背景100", 500, @200, @0, Dxl2, false);
	Move("絵演窓右/絵背景200", 500, @200, @0, Dxl2, false);
	Move("絵演窓右/絵演右", 500, @100, @0, Dxl2, true);

	Wait(200);

/*
	StR(1200, @60, @0,"cg/st/st一条_通常_制服.png");
	StCR(1100, @190, @0,"cg/st/3d正宗天牛虫_正面.png");
	FadeStR(300,false);
	Wait(50);
	FadeStCR(300,true);
*/
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0770a02">
「他に理由なんか<RUBY text="ね">無</RUBY>ぇ。
　要らねえよ」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0780a09">
「……」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0790a09">
「ふはッ――――」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0800a02">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0810a09">
「くあっはっはっはっはっはっはっはっはっ!!
　そうか！　そうか！　<RUBY text="・・・">そうか</RUBY>!!」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0820a09">
「純真無垢な娘御と、
　正宗――相州五郎入道正宗!?」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0830a09">
「いつか――いつか現れるとは思うておった。
　おぬしらの如き者がのう！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0840a02">
「何ぃ？」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0850a09">
「<RUBY text="バサラ">婆娑羅</RUBY>の真髄はただ奇を<RUBY text="てら">衒</RUBY>うに非ず。
　こころの求めるままに振舞う――<RUBY text="まよわず">不惑</RUBY>――
<RUBY text="はじず">無恥</RUBY>――<RUBY text="かんがえず">無思慮</RUBY>！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0860a09">
「欲一念を貫いてこそ婆娑羅！
　そのような生き様が人に許されるのか!?」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0870a09">
「否……許されてはならぬ。
　<RUBY text="・・・・・">許されては</RUBY>面白くも何ともないわ！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0880a09">
「否定せよ！
　取るに足らぬ有象無象ども、その意思と力
を結集して我が道を塞げ！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0890a09">
「正道の<RUBY text="・・">英雄</RUBY>を差し向けるがいいわ!!」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0900a02">
「――――」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0910a09">
「苦難を越えずして何の道か。
　正道と対決せずして何の婆娑羅か」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0920a09">
「破邪の<RUBY text="しょうこう">聖甲</RUBY>――五郎正宗！
　おぬしが来るのを待っておったぞ！」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0930a02">
「……覚悟はできてるってのか？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0940a09">
「何を聞いておった。
　覚悟なぞあるかい」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0950a09">
「わしはおぬしを踏み潰す。
　そうして我が生涯を完成させようぞ」


{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs0960a09">
「何ものもかえりみず、我欲のままに生き、
罰も受けず、満ち足りて命を終えた……
　世にも<RUBY text="・・・・">ふざけた</RUBY>男として、のう！」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0970a02">
「させねえよ!!
　正宗!!」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb02/024vs0980b40">
《応!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StR(4900, @60, @0,"cg/st/st一条_装甲_制服a.png");
	FadeStR(0,true);
	Delete("絵演窓右/絵背景100");
	FadeDelete("絵板写", 300, false);
	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068a]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs0990a02">
「世に鬼あれば鬼を断つ。
　世に悪あれば悪を断つ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	WaitAction("絵板写", null);
	CreatePlainSP("絵板写", 5000);
	StR(4900, @60, @0,"cg/st/st一条_装甲_制服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, false);
	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0068b]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs1000a02">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆正宗変身
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStR(0,true);


	CreateTextureSP("絵演窓右/絵背景200", 4150, Center, InBottom, "cg/st/3d正宗_立ち_通常.png");
	Move("絵演窓右/絵背景*", 0, @250, @0, null, true);

//	StR(5200, @0, @0,"cg/st/3d正宗_立ち_通常.png");
//	DeleteStCR(0,true);
//	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

//	CreatePlainSP("絵板写", 5000);
//	StL(1100, @-60, @0,"cg/st/st童心_装甲_私服.png");
//	FadeStL(0,true);
//	FadeDelete("絵板写", 300, true);

	Wait(1000);

	CreateSE("SE01","se特殊_鎧_装着03");

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ev/ev956_童心装甲_a.jpg");
	SetBlur("絵背景100", true, 3, 300, 100, false);
	Zoom("絵背景100", 0, 1500, 1500, null, true);

	MusicStart("SE01",0,1000,0,700,null,false);
	Zoom("絵背景100", 1500, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 1000, 1000, null, true);
	Delete("絵演窓右/絵背景200");
	DeleteStA(0,true);

	Wait(1000);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs1010a09">
「天に冥府。地に魔道。
　踏まえし道は修羅の道」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正国変身
	#av_同田貫=true;

/*
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StL(1000, @0, @0,"cg/st/3d同田貫_立ち_通常.png");
	DeleteStCL(0,true);
	FadeStL(0,true);
	FadeDelete("絵フラ", 1000, true);

//◆正宗ＶＳ正国

	CreateSE("SE02a","se擬音_雰囲気_抜刀01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	WaitAction("@", null);
	CreatePlainSP("絵板写", 5000);
	StR(1200, @0, @0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 200, true);

	CreateSE("SE02b","se戦闘_動作_刀構え02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	StL(1100, @0, @0,"cg/st/3d同田貫_立ち_陰義.png");
	FadeStL(0,true);
	FadeDelete("絵板写", 200, true);
*/

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着04");
	CreateSE("SE03","se特殊_鎧_装着06");
	MusicStart("SE01",0,1000,0,700,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Zoom("絵背景100", 600, 2000, 2000, Axl2, false);
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵背景100大", 10000, 0, 0, "cg/ev/resize/ev956_童心装甲_bl.jpg");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ev/ev956_童心装甲_b.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 200, 70, false);

	OnSE("se特殊_鎧_装着03",1000);

	Move("絵背景100大", 3000, -1024, @0, Dxl1, false);
	Fade("絵フラ", 1000, 0, null, true);

	Wait(1000);
	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("絵背景100", 1000, 1000, null, false);
	Zoom("絵背景100", 1000, 1000, 1000, Axl1, true);
	MusicStart("SE03",0,1000,0,1250,null,false);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev956_童心装甲_b.jpg", true);

	Wait(1500);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景100大");

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, -835, -320, "cg/bg/resize/bg071_普陀楽城内張り出し_03ｌ.jpg");
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
	Move("絵演窓右/絵背景100", 0, -1012, -661, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3d同田貫_立ち_通常l.png");
	Move("絵背景200", 0, -1159, -1463, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/resize/bg071_普陀楽城内張り出し_03ｌ.jpg");

	Move("絵背景200", 3000, -1159, -1563, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -1012, -561, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);


	SetFwC("cg/fw/fw正宗_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/024vs1020a02">
「いくぞ……
　<RUBY text="てめえ">自分</RUBY>のための念仏を唱えろ、坊主!!」


{	FwC("cg/fw/fw同田貫_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/024vs1030a09">
「はぁっはァ！
　そんなもん、とうに忘れてしもうたわ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆激突。ぞがーん。
	CreateSE("SE03","se戦闘_衝撃_衝突01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	CreatePlainSPadd("絵板写上", 5100);
	CreatePlainSP("絵板写", 5000);
	Zoom("絵板写上", 500, 1500, 1500, Axl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Axl3, false);

	Fade("絵色白", 500, 1000, null, true);
	$残時間=RemainTime("SE03");
	FadeDelete("絵板写上", 200, false);
	CreateColorEX("絵色黒", 10010, "#000000");
	Fade("絵色黒", $残時間, 1000, null, true);

	ClearFadeAll(100, true);


}

..//ジャンプ指定
//次ファイル　"mb02_025vs.nss"