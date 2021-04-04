//<continuation number="1850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_051.nss_MAIN
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
	#bg084_飛行船艦橋_02=true;
	#bg028_横浜ＧＨＱ基地_03=true;
	#ev805_戦争絵シリーズその３_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_052.nss";

}

scene md04_051.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_050vs.nss"

//◆ガレーキープ
//◆艦橋
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateTextureSP("絵ＥＶ", 4900, Center, Middle, "cg/ev/ev805_戦争絵シリーズその３_c.jpg");
	Zoom("絵ＥＶ", 0, 1300, 1300, null, true);
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 3000, 1000, 1000, null, false);

	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	CreateSE("SE01L","se乗物_飛行船_巡航音_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

	SetVolume("SE01L", 1000, 300, null);
	FadeDelete("絵ＥＶ", 1000, true);

	Wait(500);

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510010e008">
「間もなく鎌倉です！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, true);

	SetVolume("SE01L", 3000, 0, null);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510020b03">
「そうか……。
　投下の用意は出来ているな？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510030e008">
「はっ、問題ありません。
　当該騎体は既に爆装を終えて射出口で待機
しています」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510040b03">
「ならいい」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510050e008">
「…………。
　キャノン中佐」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510060b03">
「何だ？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510070e008">
「我々の目的は、達成されるのでしょうか」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510080b03">
「……」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510090b03">
「ああ。
　やるさ、ガーゲット中尉」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510100b03">
「大和を奪り、女王と戦い、故郷を解放する。
　あの広大な大陸で待つ同胞達のために」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510110e008">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510120b03">
「そして今は亡き同胞達のために。
　ウィロー少将……それにガーゲット少佐」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510130b03">
「君の兄の勇敢な死に応えなくてはな、中尉」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510140e008">
「……はい」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(500);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510150b03">
「……ん？
　何だあれは」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510160e008">
「中佐殿、何か？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510170b03">
「地上の様子が変だ。
　あれは……友軍か？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510180b03">
「まだ撤退していないのか!?」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510190e008">
「…………」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510200b03">
「中尉、地上と連絡を取れ。
　至急だ！」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510210e008">
「はッ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(500);

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510220e008">
「中佐殿……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510230b03">
「どうだ」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510240e008">
「普陀楽城周辺は混乱しています。
　……あの<RUBY text="シルヴァー">銀星号</RUBY>が出現したらしく」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510250b03">
「何だと!?」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510260e008">
「その影響で、我が軍の撤退は完了しており
ません。
　銀星号が原因と思われる狂乱状態の渦中に
巻き込まれています」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510270b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510280a13">
「何を迷うのだね？
　キャノン中佐」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆ウォルフ

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, false);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510290b03">
「教授……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510300a13">
「さ、鍛造雷弾を投下する時だ。
　発令したまえ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510310b03">
「……スラップスティックコメディをやる気
はありませんよ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510320a13">
「僕にもないね」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510330b03">
「味方の頭の上に爆弾を落とせと？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510340a13">
「必要な犠牲だ」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510350b03">
「必要と言い切るには、議論が足りていない
と思いますが」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510360a13">
「そうかな？
　試してみようか」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510370a13">
「いま鍛造雷弾を使えば六波羅を撃滅できる。
　大和の民は我々に畏服し、我々は大英連邦
に挑む足場を獲得する」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510380a13">
「今が好機。
　次の機会はいつやって来るかわからない」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510390a13">
「――さて。
　論議の余地があるかな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510400b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510410a13">
「中佐、するべき事はわかっているはずだよ。
　無駄な時間を費やすのは止そうじゃないか」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510420b03">
「私はあなたと違って凡人なんです。
　そう簡単には真実とそうでないものを割り
切れませんよ」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510430a13">
「普段なら悩むのもいい。納得のゆく結論が
出るまで考え抜くのもいい。
　しかし今は決断の時なのだ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510440a13">
「軍人ならわかるだろう」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510450b03">
「……生憎、戦場で味方を爆撃してでも目的
達成に固執するべきなのかという問題に取り
組むのはこれが初めてでして」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510460a13">
「地上に我々の味方などいない。
　あれは連盟軍。大英連邦の手先だよ。そう
ではないか？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510470b03">
「その中に、<RUBY text="・・">同胞</RUBY>もいるんですよ」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510480a13">
「必要な犠牲だ！
　わからないのか、君ほどの男が！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510490b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510500a13">
「つまり無垢な少女のパンツを脱がすことは
至上の悦楽だが、しかし、その悦楽を味わう
ためにはまず苦渋を飲んでパンツをはかせな
くてはならない！　そういうことなのだ!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510510b03">
「ますますわからなくなりましたが」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510520a13">
「うぅぬ、手を焼かせる男だな！
　中佐、君はウィロー少将の最期をもう忘れ
去ってしまったのか!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510530b03">
「……」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510540a13">
「彼の遺言を忘れたのか！
　君に頼むと、そう言っただろう！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510550a13">
「彼の悲願を踏みにじるつもりかね!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510560b03">
「ウォルフ教授」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510570a13">
「さあ、君のなすべきことは一つだけだ！
　直ちに命令を下すのだよ！」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);


//◆チャキ。銃構え
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	StL(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	FadeStL(300, true);


	WaitKey(300);

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510580a13">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510590b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510600a13">
「素敵なライターだね。
　でも、僕は煙草をやらないんだ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510610b03">
「それは健康的でよろしい。
　是非そのまま、健康的な態度をとり続けて
下さい」

{	SoundPlay("@mbgm34", 0, 1000, true);}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510620b03">
「この素敵なライターは使い方をひとつ間違
えるだけで、大変に不健康な結果を招いてし
まうので……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510630a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510640b03">
「どうしても……
　そう、<RUBY text="・・・・・">どうしても</RUBY>」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510650b03">
「鍛造雷弾を落として欲しいと仰るのなら、
まずはその真意を明かして頂きましょう。
　それが筋道というものではありませんか？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510660a13">
「何を今更、君は言うのかな。
　すべては大英連邦の傲慢なる支配に拒絶の
鉄槌を加えるため――」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510670b03">
「教授」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510680b03">
「あと一度だけ、同じ質問をします。
　返答が変わらなかった場合……残念ですが、
不健康なお体になって頂きますので。どうか
慎重にお答え下さい」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510690a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510700b03">
「あなたは鍛造雷弾の使用にこだわってきた。
　そう、勝利ではない。戦果ではない。政治
的意義ではない……ただ雷弾を普陀楽に投下
するというその行為にのみ執心していた」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510710b03">
「そのために我々に近付いた」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510720a13">
「キャノン君……どうも誤解が」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510730b03">
「ウォルフ教授。
　覚えてらっしゃいますか……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510740b03">
「開戦前の、横浜での会話を」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510750a13">
「……？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	DeleteStA(0.true);

	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1100, @100, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-100, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);

	EfRecoIn2(300);

	SetFwH("cg/fw/fwキャノン_沈痛.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510760b03">
「いえ、<RUBY text="・・・・">勝てない</RUBY>可能性すらあります。
　負けるとまでは言わずとも。こちらが企図
する、敵軍主力の早期撃滅を果たせない恐れ
があります」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510770a13">
「苦戦する、と？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510780b03">
「ええ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0510790b00">
「そうだな……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510800a13">
「好都合ではないか」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510810b03">
「……何ですと？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510820a13">
「戦況が不利になったら、それを口実に鍛造
雷弾の使用許可を求めれば良いのだ。
　連盟本部も大規模な増援を派遣するより、
お手軽な方を望むだろう」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510830b03">
「……教授。
　少し、無謀が過ぎませんか？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0510840b00">
「いや……いや！
　そう決め付けたものでもないぞ、キャノン
中佐」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	DeleteStL(0,true);
	DeleteStCL(0,true);
	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	FadeStL(0, true);

	EfRecoOut2(600,true);

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510850b03">
「あなたはあの時――
　<RUBY text="・・・">好都合</RUBY>だと言ったんです」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510860b03">
「……何が好都合なんでしょうね？
　通常兵力による関東侵攻を選択した我々に
とって、最良の結末とは、作戦が順調に運び
最低限の損害で普陀楽を陥とす事です」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510870b03">
「苦戦に陥り、鍛造雷弾を使わねばならない
状況にまで追い込まれる事が、好都合である
はずがありませんよ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510880a13">
「――――――――」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510890b03">
「好都合なのは<RUBY text="・・・・・">あなた個人</RUBY>だ。
　そうなんでしょう、教授？」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510900b03">
「どんな理由でか鍛造雷弾を絶対に使わなく
てはならないあなたにとっては、我々の苦戦
こそ望ましい。
　そうなるよう、努力もなさいましたか？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510910b03">
「六波羅に情報を流すとか……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510920a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510930b03">
「答えて頂きましょう。
　ウォルフ教授、あなたの目的は何です？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510940a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510950b03">
「…………」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510960e008">
「最後の審判を仰ぐためですよ。
　キャノン中佐」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆かちゃ。銃


	OnSE("se戦闘_銃器_拳銃構え01", 1000);
	StCL(990, @-150, @0, "cg/st/stＧＨＱ中尉_戦闘_制服.png");
	FadeStCL(300, true);

	Wait(300);

	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, false);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510970b03">
「……ガーゲット中尉……」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510980e008">
「迂闊な真似はなさらないでください。
　小官のライターも不健康な代物です」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510990b03">
「君はウォルフ教授の仲間なのか」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511000e008">
「ええ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511010a13">
「真実を求める同志、といったところかな」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511020e008">
「……それは違いますよ。
　小官は――俺はもう、単に疲れたんです」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511030e008">
「疲れたんですよ、キャノン中佐」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511040b03">
「中尉……」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511050e008">
「大和を占領して、どうなるんです。
　次は大英連邦相手に果てしない戦争をやる
んでしょう」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511060e008">
「いつ終わるかわからない。
　勝てるかどうかもわからない、戦争」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511070e008">
「もう……うんざりなんですよ……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511080b03">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511090b03">
「だから、故郷の解放を諦めるのか？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511100b03">
「代償は金か、それとも別の何かか、それは
知らないが。
　この怪しげな髭男に誇りと仲間を売り渡し、
のどかに余生を過ごすと？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511110e008">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――


	SetFwH("cg/fw/fwキャノン_沈痛.png");

//嶋：修正（思ってる）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511120b03">
「あのジョージの弟だ。もう少し気概はある
とみていたんだがな……。
　まさか女王に本心から屈服しても構わない
と思っているとはね」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511130e008">
「見縊らないで欲しい。
　女王に頭を下げたりはしません」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511140b03">
「だが戦うのはやめて、どこか南の島にでも
逃げたりはするのか？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511150e008">
「いいえ。
　戦いますとも」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511160e008">
「大英連邦に裁きは与えますとも」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511170b03">
「それは素晴らしい。何百年後にだい？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511180e008">
「今日のうちに」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511190b03">
「…………」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511200e008">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511210b03">
「最後の審判とか言ったな」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511220e008">
「ええ」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511230b03">
「最近の若者のジョークには疎くてね。
　おじさんにもわかるように説明してもらえ
ないか」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511240e008">
「構いませんがまず、鍛造雷弾の投下を。
　ご明察の通り、我々はそれを求めているの
です」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511250b03">
「自分でやったらどうだ？
　見たところ上官の頭に銃を押し付ける遊び
で忙しいようだが、実は俺も学術顧問を相手
に同じ遊びの最中でね」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511260e008">
「中佐……！」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511270a13">
「神を呼ぶのだよ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511280b03">
「…………教授？
　何と言われました？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511290a13">
「神を呼ぶのだ。
　我々の世界に」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511300a13">
「神の前ではあらゆる虚偽が剥ぎ取られる。
　人類はその罪を、業を……すべての真実を
さらけ出し、正にせよ負にせよ、価値を定め
られることになるだろう」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511310b03">
「…………。
　私の知っている神様というやつは怠け者で、
なかなか人間の前には姿を見せて下さらない
はずなんですがね」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511320a13">
「うむ。神はこの数千年、地底の寝室で寝て
ばかりだ。<RUBY text="たかいびき">高鼾</RUBY>でね。
　神を大いなる父として崇め奉りたい我々に
とって、あまり理想的なお姿とはいえない」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511330a13">
「そろそろシャキッとして頂こうと思うのだ。
　まずは寝床から叩き起こし、外に出て日光
を浴びてもらわねば」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511340b03">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511350b03">
「誤解だといいのですが」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511360a13">
「うむ？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511370b03">
「あなたはもしかして、<RUBY text="・・・・">実在する</RUBY>神を地上へ
降ろすと言いたいのですか？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511380a13">
「ああ、そうだ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511390b03">
「……………………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511400a13">
「そのために鍛造雷弾という特大の鐘を打ち
鳴らすのだよ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511410b03">
「申し訳ありませんが、教授。
　全く理解できません」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511420a13">
「人知の理解を超える所にも真実はある。
　そういうことだ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511430b03">
「神秘主義者の常套句ですな」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511440a13">
「その一言で思考停止するべきではない。
　君は考え、そして認めた方がいい」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511450b03">
「はぁ。地底の神とやらを？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511460a13">
「うん。
　君はずっと見過ごしていたガーゲット中尉
の背信を、今ようやく事実として認めている
だろう？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511470a13">
「それと同じことさ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511480b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511490a13">
「君は僕の知る中で最も明敏な人物の一人だ。
　ああ、ハイドリヒ君を思い出すよ……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511500a13">
「しかし完璧な知性の所有者ではない。
　かの<RUBY text="ＳＳ">親衛隊</RUBY>大将ラインハルト・ハイドリヒ
もやはり完璧ではなく、テロに斃れたように」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511510b03">
「何が仰りたいので？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511520a13">
「君が気付いていない真実についてさ。
　……ガーゲット中尉だけだと思うかね？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511530b03">
「――――」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511540a13">
「君はＧＨＱの各部署へ新大陸独立派の仲間
を密かに送り込み、権限を掌握しただろう？
　同じことを僕がやっていたとしたら不思議
かな？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511550b03">
「何ですと……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511560a13">
「もちろん簡単ではなかったがね。
　しかし中尉の兄――ジョージ・ガーゲット
少佐の死後は、さしもの君も足元への注意が
それまでよりおろそかになった」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511570a13">
「その隙に<RUBY text="・・・・">僕の仲間</RUBY>が潜り込んだ。
　君の組織の中に」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511580b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511590a13">
「決して多数ではないが……
　必要な時に必要な働きができる程度の数は
いる」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511600a13">
「<RUBY text="・・・・・・・">この船の中にも</RUBY>」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511610a13">
「今この時、必要な間だけ、船の機能を奪い
取れる程度の数は……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆だかだか。足音
//◆兵士数人

	OnSE("se人体_足音_兵士集合01", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511620b03">
「…………………………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511630a13">
「さて。
　キャノン中佐」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511640a13">
「僕はこれから、質問と要求をする。
　<RUBY text="イエス">是</RUBY>か<RUBY text="ノー">否</RUBY>で答えてもらおう」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511650b03">
「……どうぞ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511660a13">
「君は多くの、大切なことを見落とした」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511670b03">
「<RUBY text="イエス">是</RUBY>」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511680a13">
「君は完璧ではなかった」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511690b03">
「<RUBY text="イエス">是</RUBY>」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511700a13">
「君は敗北した」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511710b03">
「……<RUBY text="イエス">是</RUBY>……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511720a13">
「では、我々に協力してくれるかな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511730b03">
「<RUBY text="ノー">否</RUBY>」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511740a13">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511750b03">
「教授、私は敗者です。
　そしてあなた方は勝者ではない」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511760a13">
「何故かな？」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511770b03">
「単なる一般論ですよ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511780b03">
「神に祈る者、神を敬う者、神を知らぬ者、
神を罵る者が勝者になった例はある。
　しかし、神に<RUBY text="・・">縋る</RUBY>者は常に敗者だ」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511790e008">
「……っ……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511800a13">
「そうか……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511810b03">
「ウォルフ教授。
　私からも最後に一つ、構いませんか」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511820b03">
「これまでずっと言いたくてたまらなかった
ことがあって……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511830a13">
「何だい？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511840b03">
「この狂人が」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511850a13">
「<RUBY text="ヤー">是</RUBY>」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆ブラックアウト

	SetVolume("@mbgm*", 500, 0, null);


//「ヤー」直後に暗転パーンという演出
	CreateColorSP("暗転", 15000, "BLACK");


//◆銃声
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_052.nss"