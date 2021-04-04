//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_007.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;
	#bg100_天守閣_01=true;

	#ev803_戦争マップ１_a=true;
	#ev803_戦争マップ１_b=true;
	#ev803_戦争マップ１_c=true;
	#ev803_戦争マップ１_d=true;
	#ev803_戦争マップ１_e=true;
	#ev803_戦争マップ１_f=true;
	#ev803_戦争マップ１_g=true;
	#ev803_戦争マップ１_h=true;

	#ev805_戦争絵シリーズその３_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_008.nss";

}

scene md04_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_006.nss"

//あきゅん「演出：素材確認のため一部仮仮打ち」

//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg100_天守閣_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);


//◆爆撃。どがーんどがーん。
	CreateSE("爆撃", "se戦闘_破壊_爆発04");
	MusicStart("爆撃", 0, 1000, 0, 1000, null,false);

	Shake("絵板写", 2000, 0, 2, 0, 0, 1000, DxlAuto, true);

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(1000, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070010a07">
「おーおー。
　派手にやりやがる」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070020a08">
「屈辱ね……。
　こんなにもあっさりと、普陀楽の空を押さ
えられるなんて！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070030a07">
「<RUBY text="しんへいき">隠形竜騎兵</RUBY>の特性を生かした奇襲で防空網
を突破してきたみたいだからな、連中。
　どっしょもねえわ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070040a09">
「<RUBY text="ステルスドラコ">隠形竜騎兵</RUBY>か。
　存在はむろん知っておったが……」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0070050a09">
「これだけの、まとまった数を進駐軍が用意
していたというのはちと予想外でしたのう」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070060a08">
「ええ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆また爆撃
	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);
	OnSE("se戦闘_破壊_大爆発01", 1000);
	Wait(500);
	Shake("絵板写", 3000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	CreateTextureEX("絵背景100", 2000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 500, 100, false);

	Fade("絵背景100", 1000, 1000, null, false);


	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070070a08">
「――ああ、もう！
　それにしてもこちらの竜騎兵は不甲斐ない
ったらないわね！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070080a08">
「いつまで<RUBY text="あんなもの">大型飛行艦</RUBY>を頭の上に居座らせて
おく気なのよッ！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070090a07">
「仕方ねえだろ。
　最初から上を取られてる状況での勝負じゃ、
どうしたってこっちが不利だ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070100a07">
「おまけにあの<RUBY text="ステルスドラコ">隠形竜騎兵</RUBY>、いるのがわかっ
ててもうっかりしてると見逃しちまうくらい
<RUBY text="レーダー">探査機能</RUBY>への反応が悪いらしいかんな」

{	FadeDelete("絵背景100", 500, false);
	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070110a08">
「それにしたって……
　ああ、じれったい！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070120a08">
「麿が出るわ!!」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070130a07">
「ってさ。
　どうする、童心坊？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070140a09">
「……さようでござるな。
　こちらもようやく態勢が整ったところ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070150a09">
「我らが先頭に立ち、兵を動かすといたそう。
　よろしゅうござるか？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070160a07">
「あいよ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070170a08">
「勿論です！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆鎌倉周辺地図
//◆進駐軍の侵攻状況を矢印と凸とかで図解

//■着手前からの状態にしています inc櫻井

	PrintBG("上背景", 30000);
	CreateSE("SE01","se日常_物_紙をめくる02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵ＥＶ戦場ａ", 2000, Center, Middle, "cg/ev/ev803_戦争マップ１_a.jpg");
	FadeDelete("上背景", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵暗転", 1000, 100, "blind_03_00_0", true);

	WaitKey(500);

	CreateTextureSP("絵ＥＶ戦場ｂ", 1990, Center, Middle, "cg/ev/ev803_戦争マップ１_b.jpg");
	DrawDelete("絵ＥＶ戦場ａ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("絵ＥＶ戦場ｃ", 1980, Center, Middle, "cg/ev/ev803_戦争マップ１_c.jpg");
	DrawDelete("絵ＥＶ戦場ｂ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("絵ＥＶ戦場ｄ", 1970, Center, Middle, "cg/ev/ev803_戦争マップ１_d.jpg");
	DrawDelete("絵ＥＶ戦場ｃ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070180a09">
「敵は七里ヶ浜及び由比ヶ浜を強襲。
　空爆と艦砲射撃によって砲台を沈黙させた
後、揚陸艦を押し立てて上陸を実行した模様
でござる」

//嶋：修正（防衛隊）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070190a09">
「短時間の戦闘でこちらの湾岸防衛は壊滅」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。上陸
	CreateTextureSP("絵ＥＶ戦場ｅ", 1960, Center, Middle, "cg/ev/ev803_戦争マップ１_e.jpg");
	Request("絵ＥＶ戦場ｅ", Smoothing);

	DrawDelete("絵ＥＶ戦場ｄ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(200);

	Zoom("絵ＥＶ戦場ｅ", 1000, 1200, 1200, Dxl1, false);
	Move("絵ＥＶ戦場ｅ", 1000, 91, 40, Dxl1, true);
	WaitKey(500);


	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070200a09">
「七里ヶ浜より上陸せし軍集団は藤沢街道を
北上。
　由比ヶ浜より上陸の部隊は若宮大路を抜け、
鎌倉街道へ出て普陀楽を目指すようでござる」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070210a07">
「……若宮大路を抜けてくるのか？
　鎌倉の市街地中央突破じゃねーか」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070220a07">
「奴ら、市民に憎まれても大和を分捕るって
とこまで開き直ったのかよ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070230a09">
「いやいや、さにあらず。
　進駐軍はまず竜騎兵を先行させて若宮大路
を確保」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070240a09">
「その間に本隊を進め、一気に大路を<RUBY text="・・・">埋めて</RUBY>
しまった様子。
　となれば、兵や装甲車でぎっしりの大路に
好んで近付く市民もおらず……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070250a09">
「結果的に市民の被害は出ており申さぬ。
　先行した竜騎兵による市民への外出自粛の
呼び掛けと通行止めの措置も功を奏したので
ござろう」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070260a07">
「……ムカつくくらい手際のいいやっちゃな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。普陀楽へ進撃する二軍集団
	CreateTextureSP("絵ＥＶ戦場ｆ", 1950, Center, Middle, "cg/ev/ev803_戦争マップ１_f.jpg");
	Request("絵ＥＶ戦場ｆ", Smoothing);
	Zoom("絵ＥＶ戦場ｆ", 0, 1200, 1200, null, true);
	Move("絵ＥＶ戦場ｆ", 0, 91, 40, null, true);

	DrawDelete("絵ＥＶ戦場ｅ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070270a09">
「二つの軍集団は間もなく普陀楽外縁に来襲。
　そしてこれとは別にもう一つの軍集団が、
先刻朝比奈峠を突破……金沢街道より鎌倉を
襲うつもりらしゅうござる」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。金沢街道から来る一軍

	Move("絵ＥＶ戦場ｆ", 1000, -91, 40, AxlDxl, true);


	CreateTextureSP("絵ＥＶ戦場ｇ", 1940, Center, Middle, "cg/ev/ev803_戦争マップ１_g.jpg");
	Request("絵ＥＶ戦場ｇ", Smoothing);
	Zoom("絵ＥＶ戦場ｇ", 0, 1200, 1200, null, true);
	Move("絵ＥＶ戦場ｇ", 0, -91, 40, null, true);

	DrawDelete("絵ＥＶ戦場ｆ", 1000, 100, "blind_01_01a_0", true);
	WaitKey(700);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070280a07">
「こいつは後詰だな。
　鎌倉の占領と補給線の確保のための軍だろ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070290a08">
「そうね。
　とりあえず、これは考えなくていいわ」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070300a08">
「問題は、すぐに来る二つ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070310a07">
「大船口と藤沢口か」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070320a09">
「うむ。
　さて、如何いたそうか……」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070330a08">
「童心様は本丸にお留まり下さい。
　普陀楽城衆を指揮して防空をお願いします」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070340a08">
「麿は小弓領衆を率いて大船方面へ向かいま
しょう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070350a07">
「なら、あてと堀越領衆は藤沢口か。
　古河と篠川の領衆は予備」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。大船と藤沢に軍配置
	Zoom("絵ＥＶ戦場ｇ", 1000, 1000, 1000, Dxl1, false);
	Move("絵ＥＶ戦場ｇ", 1000, 0, 0, Dxl1, true);

	CreateTextureSP("絵ＥＶ戦場ｈ", 1930, Center, Middle, "cg/ev/ev803_戦争マップ１_h.jpg");
	DrawDelete("絵ＥＶ戦場ｇ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070360a08">
「ええ。
　童心様、いかが？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070370a09">
「……よろしゅうござる。
　御二方、お頼みいたしますぞ」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070380a09">
「難儀な役目でござるが」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070390a08">
「お任せ下さい。
　お父様の築かれた城を夷狄の手に渡したり
するものですか！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	FadeDelete("絵ＥＶ戦場*", 500, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070400a07">
「ふふーん」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070410a08">
「……何よ？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070420a07">
「いや。
　なんか雷蝶さん、生き生きしてきたなーと
思って」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070430a07">
「おめーやっぱり、こっちのが向いてんじゃ
ねえの？
　セージだのインボーだのより、単純明快な
わっかりやすいセンソーの方がさ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070440a08">
「……………………」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070450a08">
「そうね。
　そうかもしれないわ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070460a09">
「ふっふぅ……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070470a07">
「よしよし。
　あても張り切るとしよっかね」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070480a07">
「方針はこんな感じでいいのか？
　獅子吼が戻るまで城を支える。で、援軍が
来たら反攻――」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070490a07">
「攻城軍を蹴散らして横浜を討つ」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070500a08">
「……いいんじゃない？
　そうしてしまえば、こちらの勝ちよ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070510a09">
「で、ござるの。
　その方針でよろしかろうと存ずる」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070520a07">
「あぁ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070530a07">
（……ま、そこまでやる必要はないんだけど）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　俺にだけ聴こえる声で、茶々丸は続けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070540a07">
（相手が相手だ。
　そこまでやる気で戦って、やっとこ<RUBY text="まとも">対等</RUBY>な
勝負になるかどうかってとこだと思うよ）

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0070550a00">
（……そうだな）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　国際連盟大和進駐軍。
　まず兵力で六波羅に勝り、竜騎兵を除くほぼ全ての
兵科において装備面でも優越する――

　大敵である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_008.nss"