//<continuation number="1000">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_022.nss_MAIN
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
	#bg049_景明故郷住宅地b_02=true;
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_023.nss";

}

scene mb04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_021.nss"

//◆燃える町。bg047？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SEL01","se背景_ガヤ_燃える町並み_L");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,800,null,true);
	FadeDelete("絵暗転", 2000, true);

//◆テキスト横書き
	SetNwH("cg/fw/nyＧＨＱ将校.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220010e002">
「狡猾な奴らだ。
　自分の町に火をつけていくとはな」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220020e004">
「撤退しますか、隊長？」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220030e002">
「そうもいかんだろうさ。
　敵部隊の集結を許さず各個撃破というのが
司令部の方針だ」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220040e002">
「あの六波羅どもは見逃せない。
　火勢の弱い箇所を狙って突破し捕捉、撃滅
する」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220050e004">
「避難中の市民集団との接触は避けられない
と思われますが……。
　その場合の対応は？」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220060e002">
「威嚇射撃で散らして道を作れ。
　それでも埒が明かなければ――強行突破だ」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220070e004">
「……宜しいのですか？
　後で問題になるのでは……」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220080e002">
「問題？　ああ、問題さ。
　民間人に発砲するんだ、問題にならない筈
があるか！」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220090e002">
「だがこいつは選択だ。
　我々は祖国の栄光のために戦うのか、それ
ともこの国の平穏のために戦うのか？」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220100e002">
「どっちだ？」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220110e004">
「……建前の上では、後者だったような気も
しますがね」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220120e002">
「建前。わかってるじゃないか。
　そう、そして軍を動かすのは建前ではなく
生憎と<RUBY text="・・">現実</RUBY>の方だ」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220130e002">
「我々は現実的に行動すべきだろう」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220140e004">
「常々思うんですか、自分は職業選択を間違
えたようです。
　ハリウッドスターになってみんなの夢の中
で生きていれば良かった」


{	NwH("cg/fw/nyＧＨＱ将校.png");}
//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220150e002">
「全くだ。なんでそうしなかった？
　愚かな君よ、さあ仕事を始めよう」


//【ｅｔｃ／ＧＨＱ士官】
<voice name="ｅｔｃ／ＧＨＱ士官" class="その他男声" src="voice/mb04/0220160e002">
「武器も持たない市民に向かって雄々しくも
銃口を突きつけるとしようじゃないか。
　こうすることで戦争は早く終わり、結果的
にこの国の平和にも寄与するのだと信じてな」


{	NwH("cg/fw/nyＧＨＱ下士官.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/mb04/0220170e004">
「諒解」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	SetVolume("SE*", 2500, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//◆ぱーん、ぱーん。単発銃声数度
//◆それに合わせて悲鳴と喧騒。キャー。
//◆ウェイト置いて
//◆ばらららら。機関銃斉射
//◆人々の絶叫。ギャアアアア。
	CreateSE("SE01","se背景_ガヤ_戦場の風景05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	SetVolume("SE*", 100, 0, null);

//◆フェードイン
//◆bg049炎上
//◆絶叫、悲鳴、喧騒のＳＥ。やや遠く
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateSE("SE01","se背景_ガヤ_悲鳴01");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",2000,1000,0,1000,null,false);
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

//◆兵士の文句はイギリス国歌「女王陛下万歳」
//◆歌えるなら歌って欲しいところだが、多分無茶だと
//◆思うので淡々と沈鬱に読む感じでＯＫ。

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイスは「God save our gracious Queen,」
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220180e005">
「……〝神よ我らの慈悲深き女王陛下を守り
たまえ〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}

//◆Long live our noble Queen,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220190e005">
「……〝我らの気高き女王よ永遠なれ〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆God save the Queen!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220200e005">
「……〝神よ女王を守りたまえ〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆Send her victorious,Happy and glorious,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220210e005">
「……〝陛下に勝利と幸福と栄光を〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆Long to reign over us,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220220e005">
「……〝治世に長久を〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}


//◆God save the Queen!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220230e005">
「……〝神よ女王を守りたまえ〟……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}

//◆焼けてゆく町、死に絶える人々

//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220240e005">
「…………」


//◆がたっ。
{	CreateSE("SE01","se日常_物_椅子鳴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);}

//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220250e005">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆そっち向いて銃を構える。かちゃっ。
	CreateSE("SE01b","se戦闘_銃器_構える01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆Who's there!?
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220260e005">
「誰だ!?」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220270e138">
「…………」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220280e005">
（子供か……）


//◆Go,away
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220290e005">
「あっちへ行け」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220300e138">
「…………」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//◆Hurry up!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220310e005">
「早く！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220320e138">
「…………」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220330e005">
（くそっ、言葉がわからないのか。
　大和語では……確か……）


//◆片言で
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220340e005">
「アッチ、イキナサイ。
　ハヤク、ニゲナサイ」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220350e138">
「…………」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220360e005">
「……」


{//◆発砲一回
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}
//◆Go!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220370e005">
「行けっ！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220380e138">
「ひとごろし！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆子供、石を投げる
//◆がつっと食らう
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220390e005">
「くっ」


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220400e005">
（こいつ、石を投げやがった……）


{//◆発砲ぱんぱん
	OnSE("se戦闘_銃器_拳銃発砲01",1000);}
//◆Fuck a duck!
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220410e005">
「馬鹿なことをするな！」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220420e138">
「とうさんをかえせっ！
　かあさんをかえせっ！」


//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220430e138">
「かえせよっ！」



{//◆石連続
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//◆Stop!
	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220440e005">
「やめろっ！」


{//◆発砲
//◆石
	OnSE("se戦闘_銃器_拳銃発砲01",1000);
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
//◆Stop,Boy!
	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220450e005">
「やめろって、この餓鬼――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆がつっと食らう
//◆はずみで発砲
//◆当たっちゃいました。
//◆子供が倒れる
//◆血が。
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se戦闘_銃器_拳銃発砲01",1000);
	CreateSE("SE01","se戦闘_攻撃_殴る04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#CC0000");
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	FadeDelete("絵フラッシュ白", 100, false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se人体_血_たれる01");
	CreateSE("SE01c","se人体_衝撃_転倒04");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01b");
	WaitKey($残時間);

	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeDelete("絵演震", 1000, false);

	Wait(1500);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220460e005">
「…………」


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220470e005">
（え？）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220480e005">
（嘘だろ……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220490e005">
（あ、当てるつもりなんかなかった……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220500e005">
（脅かすだけのつもりで）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220510e005">
（……手元が狂って……）


//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220520e005">
（…………そんな…………）

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

//◆広がる血
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPmul("絵演効果", 4000, Center, Middle, "cg/anime/Left/blood_C_6.png");
	Wait(10);
	FadeDelete("絵演効果", 600, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220530e005">
「――――」


//◆「O」は「oh」と同じ
//◆O Lord our God arise,
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220540e005">
「……し……主よ……
　我らが神は降りたまい……」


//◆Scatter her enemies,And make them fall
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220550e005">
「……〝陛下の敵を打ち払い、滅ぼす〟……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	Wait(500);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220560a00">
「全ては女王のため。
　全ては祖国のためか？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	WaitAction("絵演効果", null);
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(500,true);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220570e005">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220580a00">
「それがお前の正義か」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220590a00">
「……否定しようとは思わない。
　お前がその正義を信じて戦うことで、救わ
れる人々は確かにいるだろう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220600a00">
「だが」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色血", 5000, "#CC0000");
	Fade("絵色血", 300, 1000, null, true);
	CreateTextureSP("絵演血", 4000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	WaitKey(200);
	FadeDelete("絵色血", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220610a00">
「その影に<RUBY text="・・・・・・・">救われなかった</RUBY>人々がいるという
事実は決して消えない……」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220620e005">
「……!!」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220630a00">
「お前は子供を殺した。
　その事実は永遠に存在する」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆戻る
	FadeDelete("絵演血", 600, false);

	SetNwC("cg/fw/nwＧＨＱ兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220640e005">
「…………」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220650a00">
「……ＹＯＵ　ＡＲＥ　ＧＵＩＬＴＹ」


{	NwC("cg/fw/nwＧＨＱ兵士.png");}
//【ｅｔｃ／ＧＨＱ兵士Ｂ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ｂ" class="その他男声" src="voice/mb04/0220660e005">
「オアアアアアアアアアアアアアアッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆走り去る兵士
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm33",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220670a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220680a01">
《御堂……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220690a00">
「この辺りは、もう無人のようだ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220700a01">
《ええ。
　あの兵士のお仲間は町の中心部へ向かって
進んでいるし……》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220710a01">
《住民は……逃げたか、
　……そうでなければ……》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220720a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220730a01">
《いくらかは助けられたのかしら。
　私たちがあの連中の一部を足止めしたこと
で……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220740a00">
「<RUBY text="・・・・">いくらか</RUBY>は。
　だが」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220750a00">
「……彼らは助けられなかった。
　間に合わなかった」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220760a01">
《……そうね……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　足元を見る。
　もう動かない男児。

　そして少し離れた所に、折り重なって倒れ伏す男女。
　
　皆、見覚えがあった。……小弓へ向かう途上で立ち
寄り、争いに巻き込んでしまった、喫茶店の一家だ。

　元々この町の住人であったのか、それとも避難して
来ていたのか。
　いずれにしても彼らはここにいて、その結果として、
<RUBY text="・・・・・">こうなった</RUBY>ようだ。

　運が無い。
　
　……その一言で感情をすべて整理するのは無論、不
可能だった。

　こぼれ落ちるのは自責の念。
　それともう一つ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220770a00">
「……何故、戦った？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220780a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　劒冑は応えてこない。
　そちらへ向けた問いではなかった。

　問うた相手も、しかし応えない。
　応える力が既になかった。

　男児は動かず、ただ伏している。
　彼は人間という生命ではなく死骸という物体なのだ
から、当然の事だ。

　誰も俺に応えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220790a00">
「何故」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　誰も訊かぬ問いを繰り返す。
　
　何故――逃げなかったのか。

　何故、石など投げたのか。
　何故、<RUBY text="・・・・・・">戦いを挑んだ</RUBY>のか。

　両親を殺された怒りか。
　
　それはわかる。

　しかし、ならばむしろ逃げるべきだった。
　今は勝てないとわかっているのだから、逃げ延びて、
復讐の機を窺わねばならなかった。それが道理だ。

　なのに、何故……
　ああも真っ直ぐに挑んでしまったのか。

　復讐心だけでは説明がつかない。

　ならば……
　何が――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆喫茶店、一条と子供
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);


	StR(7000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	SetTone("@StR*", Sepia);
	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg074_喫茶店の店内_01.jpg");
	SetTone("絵回想背景", Sepia);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 200, null, true);

		CreateColor("Face_Sepia", $FwPri02, 451, 4, 122, 122, #847000);
		Fade("Face_Sepia", 0, 0, null, true);
		Request("Face_Sepia", MulRender);
		Request("Face_Sepia", Hideable);
		SetAlias("Face_Sepia","Face_Sepia");

	SetNwC("cg/fw/nw子供.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220800e138">
「こわくない？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220810a02">
「そうだな。
　ちょっとな」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220820e138">
「でも、たたかう？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220830a02">
「うん」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／人質子供】
<voice name="ｅｔｃ／人質子供" class="その他男声" src="voice/mb04/0220840e138">
「なんで？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0220850a02">
「そいつが、勇気」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220860a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　君は、受け止めてしまったのだろうか。
　あの一途な魂を。

　だから、なのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220870a00">
「<RUBY text="まばゆ">眩</RUBY>い……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220880a01">
《……》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220890a00">
「一条。
　お前の正義は、輝き過ぎている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　それは、魂からの輝きだから。
　何の嘘偽りもないから。

　お前に抗えるほど強い意思を持たない人々は、
　皆、その輝きに――――<RUBY text="・・・・・・・">導かれてしまう</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220900a00">
「村正。……正宗の所在はわかるか」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220910a01">
《おおよそは。
　……行くの？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220920a00">
「ああ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220930a01">
《でも、貴方の体は、もう》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220940a00">
「わかっている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　片手を挙げて、俺は劒冑の<RUBY text="こえ">金打声</RUBY>を遮った。
　……それだけの動作で、胸筋に入った裂傷から血が
洩れた。

　この肉体の<RUBY text="ダメージ">損傷</RUBY>は既に深刻という域を超えている。
　正宗が見せたあの法外なる陰義――<RUBY text="リターン・ザ・ピリオド">陰義返し</RUBY>――の
直撃、そしてそれに先立つ戦傷の蓄積は俺の耐え得る
限度以上のものをもたらしたのだ。

　それでも俺はまだ立っている。
　限度を過ぎて、なお立ち続けている。

　奇跡ではない。
　単に借金取りから逃げ回って返済を先延ばしにして
いるだけなのだと理解している。

　末路は約束されていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220950a00">
「いま倒れれば俺は二度と目覚めない。
　<RUBY text="・・・">二度と</RUBY>」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220960a01">
《…………》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220970a00">
「その前に済ませることがある。
　あとひとつ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0220980a01">
《御堂――》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0220990a00">
「俺は」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0221000a00">
「綾弥一条を倒す」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_023.nss"