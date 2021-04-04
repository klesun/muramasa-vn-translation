//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_036.nss_MAIN
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
	#bg020_山脈坑道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_037.nss";

}

scene md01_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_035.nss"

//◆源氏山？　bg020a？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StR(1000, @0, @0,"cg/st/stウォルフ_通常_私服.png");
	FadeStR(300,true);

	StL(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360010a13">
「素晴らしい！
　素ゥゥゥゥン晴らしいィィィィィィィ!!」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360020a13">
「例えて言うなら、ある晴れた昼下がり市場
へ続く道を点々と落ちているパンツを拾いな
がら歩いていた僕は無垢な下半身を惜しげも
なく晒している美しい少女と出会い恋に落ち」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360030a13">
「ゆくゆくは大企業の社長にしてやるという
父の誘いを断って二泊三日の湯煙殺人ツアー
に出港してみたもののそこはパンツをはく者
とはかない者が死闘する運命の決戦場――」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360040a13">
「それほどまでに素晴らしい!!」

{	FadeStL(300,false);
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360050b37">
「どういう例えなのでしょうか」

{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360060a13">
「例えようもない、というフィーリング路線
で理解してくれれば結構だ。
　<RUBY text="ジョウアンサイ">常闇斎</RUBY>――」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360070a13">
「おっと、バルトロメオと呼ぶべきかな」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360080b37">
「どちらでも。
　……しかし、洗礼名で呼ばれる機会は私に
とって貴重なものではあります」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360090a13">
「ならバルトロメオ。
　君もここは踊り上がってパンツを脱いでも
良い場面だよ」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360100b37">
「つまり、あれがそうなのですね」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360110a13">
「オッペンハイマー君が予見した〝<RUBY text="コラプス">星の崩壊</RUBY>〟
……まぁ、あくまで擬似的なものではあるが。
　我々の求めていた現象に間違いない」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360120a13">
「ようやくこの目で見ることができた」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360130b37">
「しかしウォルフ教授……
　あれはどうやら、収まってゆくように見え
ます」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360140a13">
「本当だ。
　今日のところは気が済んだらしいね」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360150b37">
「これでは何も起きません」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360160a13">
「ああそうとも。
　<RUBY text="・・・・・">こんなもの</RUBY>では全く足りないよ」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360170a13">
「だから我々が、あれを完成まで導くんだ」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360180b37">
「<RUBY text="・">超</RUBY>重力の渦に」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360190a13">
「そう！
　この地球上に、暗黒の渦を創造する！」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360200a13">
「そのための六波羅。
　そのためのＧＨＱ。
　そのための銀星号」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360210a13">
「そのための<RUBY text="われわれ">緑龍会</RUBY>」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360220b37">
「はい」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360230a13">
「黒き渦が現れる時、道は開く……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md01/0360240a13">
「我々は神に出会うのだ」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md01/0360250b37">
「……<RUBY text="アメン">かくあれかし</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_037.nss"