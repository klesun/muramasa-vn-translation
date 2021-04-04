//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_009.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_研究所長=true;

	$PreGameName = $GameName;

	$GameName = "ma04_010.nss";

}

scene ma04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_008.nss"

//●０８
//◆江ノ島研究所内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw所長_通常.png");

	#voice_on_研究所長=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090010b22">
「……んでぇ？
　何があったってー？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090020e068">
「はい。
　廃棄係からの報告なのですが……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090030b22">
「ネクロかカニバに目覚めたか？
　わかった。許可する」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090040e068">
「……いえ。そういったことは特に」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090050b22">
「<RUBY text="リサイクル">資源再利用</RUBY>精神の足りねー連中だ。
　少しは俺を見習えっつーの。で？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090060e068">
「侵入者を発見、捕縛したとのことです」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090070b22">
「なんだ、<RUBY text="ナマ">生</RUBY>の方か。
　そいつらの身許は？　どっかのスパイか？
あー……」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090080b22">
「いやいいやめんどくせぇ。
　燃料庫に放り込んどけ」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090090e068">
「取り調べはしなくてよろしいのですか？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090100b22">
「どっちにしろやるこた一緒じゃん？
　スパイだろーがただのアホだろーが」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090110e068">
「それはそうですが……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090120b22">
「じゃあ無駄なことすんな。
　こっちだって報告書読むのはかったりーん
だよ。つーか俺ー、三行以上の活字を見ると
火ぃつけたくなる人だしさー」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090130e068">
「……わかりました。
　ではそのように処理しておきます」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090140b22">
「んー、よろしく。
　じゃねーよちょっと待てオイ」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090150e068">
「はい？」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090160b22">
「なんで廃棄係が侵入者見つけんだよ。
　警備隊は何やってた？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090170e068">
「……それが。
　以前から廃棄用区域の警備は甘く……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090180b22">
「どぉして？」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090190e068">
「警備の者は皆、あの辺りの巡回を嫌がるの
です。
　亡霊が出る、とかで」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090200b22">
「……それは、えーっと、何だ。
　とてつもなく奥深いギャグか？」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090210b22">
「深過ぎて笑い所がわかんねーぞ……」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090220e068">
「残念ながら本気です……というより、思い
込みでしょうがね。
　あそこで<RUBY text="・・">何が</RUBY>廃棄されているのかは彼らも
知っていますから」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090230b22">
「アホか。死ね。
　警備隊に言っとけ。こんなことがもう一度
あったら、おめーらも燃料庫行きだってな」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090240e068">
「……伝えます」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090250b22">
「今日はまぁ、いいや。
　隊長だけで」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090260b22">
「処理しとけ」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090270e068">
「…………はい」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090280b22">
「あー、かったりー。うおー。イラつく。
　殺すー。犯すー。うるせー。死ぬー」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0090290b22">
「なんかやる気出てきた。
　仕事すっか。ハニーの様子見るから、バッ
テリー出しといて。今日は<RUBY text="ワンブロック">一個</RUBY>でいい」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0090300e068">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_010.nss"