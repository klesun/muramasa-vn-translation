//<continuation number="1010">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_013.nss_MAIN
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
	#bg001_空a_03=true;
	#bg035_鎌倉サーキット俯瞰a_03=true;
	#ev114_輪姦される操_a=true;
	#ev114_輪姦される操_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_014.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#ma03_013=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//シーン内
//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"ma03_012.nss"

//◆夜
//◆サーキット場
//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 1500, "#000000");

	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);

	CreateColorSP("絵暗転２", 50, "#000000");

	Delete("上背景");

	FadeDelete("絵暗転", 2000, true);


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	WaitKey(1000);

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_03.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	FadeDelete("@OnBG*", 2000, true);

	SetNwC("cg/fw/nw社長Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130010e101">
「はぁ、ふぅ……
　み、操ちゃん、こっちもよろしく頼むよ」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130020b42">
「……はい……」

{	NwC("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130030e101">
「んおっ！
　はぁ……たまらんっ！」

{	NwC("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130040e102">
「操ちゃん、こっちもだ。
　もっと深く咥えてくれ」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130050b42">
「はい……んっ、く」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆操輪姦

	CreateTextureSP("絵Ｅ100", 10, Center, Middle, "cg/ev/ev114_輪姦される操_a.jpg");
	FadeDelete("絵暗転*", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

	SetNwR("cg/fw/nw社長Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130060e102">
「おおっ、吸いつく、吸いつく。
　いい感じだよ操ちゃん」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130070e103">
「はっはっはっ、あんなにちゅぱちゅぱ音を
立てて汚らしい肉棒を吸い上げて……
　操ちゃん、そんなに好きなのかい？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130080b42">
「ちゅっ……っ。
　……はい……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130090e102">
「ふふふ、何が好きなのかなぁ？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130100b42">
「……んふっ。
　ちゅっ、はふ、んく……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130110e102">
「だめだよー操ちゃん、聞かれたらちゃんと
答えないと。
　でないと、こんなことしちゃうよ？」

{	FwR("cg/fw/fw操_沈痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130120b42">
「っ!?　ごほっ！　けほっ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130130e102">
「ほーら」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130140b42">
「んっ、くふっ、いや……
　やっ、やめてください。ちゃんと、します
から……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130150e102">
「その前に答えてよ。
　操ちゃんは何が好きなのかな〜？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130160b42">
「……っ……はい……。
　こ……これを……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130170e102">
「ん〜？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130180b42">
「おじさまたちの……
　……太くて……たくましい……男性器を…
……吸って、嘗め回して、しゃぶるのが……」

//【操】
<voice name="操" class="操" src="voice/ma03/0130190b42">
「……操は……大好きです……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130200e102">
「ははははは！
　やれやれ、なんてはしたない子だ！」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130210e103">
「困ったものですなぁ。こんな淫乱では将来
が心配です。
　うちの娘はこんな風にならないように気を
つけなくては」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130220e102">
「いやいやまったく。
　お父さんも大変でしょう、ん？」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130230b24">
「ははは……」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130240e104">
「いや、これはこれで可愛いじゃないですか。
わしは一息ついたらもう一発いきますぞ。
　ああ、皇路君。一杯ついでくれ」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130250b24">
「は、はい。どうぞ」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130260e102">
「ほぅら、操ちゃん。
　大好きなおじさんの一物だぞぉ？　お顔に
こすりつけてあげようねぇ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130270b42">
「あぅ……んっ」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130280e102">
「嬉しいかい？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130290b42">
「……っ、はい……嬉しいです」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130300e102">
「そうだろうそうだろう。
　もっと鼻を近づけて。匂いも嗅いで」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130310b42">
「んっ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130320e102">
「ははは、素晴らしい光景だ。
　こんな綺麗な娘さんが、脂ぎった男の股間
に顔を寄せて、鼻を鳴らしているなんて！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130330b42">
「はぁ……ふぅ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130340e102">
「いい匂いなんだろう？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130350b42">
「……はい……
　素敵……です……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130360e101">
「いい子だなぁ操ちゃんは。
　じゃあ、ご褒美をあげよう……かっ！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130370b42">
「あぅっ！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130380e101">
「そぉら、うははっ。
　こうされると、気持ちいいだろうっ？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130390b42">
「あぁ、ひっ……はんっ！
　いや、そんな、激しく……あふっ」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130400e101">
「おじさんの先っぽが、操ちゃんの一番奥を
つつき回してるぞぉ。
　ははは……最高だぁ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130410b42">
「ううっ、はぁう……
　き、きつい、です……おねがい、やさしく
……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130420e101">
「ひぃ、ふぅ、どうだ。
　おじさんと操ちゃんが、こんなに深くつな
がってるぞぉ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【操】
<voice name="操" class="操" src="voice/ma03/0130430b42">
「あぁ、ああ……！
　おねがい、です……ゆっくりに、して……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130440e101">
「はぁはぁ……じゃあ、言ってごらん。
　おじさんと一つになれて嬉しいって」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130450b42">
「うく、あっ、はぁ……っ！
　み、操は……んっ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130460b42">
「おじさまと……ひとつになれて……
　うれしい、です……っ！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130470e101">
「くはっ、たまらん！
　このまま一気に行くぞぉ！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130480b42">
「んぁぁっ！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130490e102">
「操ちゃん、こっちも忘れずに頼むよ。
　わしもそろそろイかせてくれ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130500b42">
「うぅっ……んっ、ちゅ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130510e102">
「おお……イくぞ、イくぞ」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130520e101">
「ほら操ちゃん、君も腰を振って！
　おじさんのモノをずっぽり咥え込んで！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130530b42">
「んくっ、あぅっ、あぁぁ！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130540e101">
「いいぞいいぞぉっ！　お尻がくねくねして
いやらしいっ！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130550e102">
「操ちゃん、出すよ……
　口の中に出すからね」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130560b42">
「んっ！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130570e102">
「おおぅ……
　出る出る。操ちゃん、吸って！　全部絞り
取ってくれぇ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130580b42">
「んっ……んくっ……ちゅぅ、んぐ……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130590b42">
「んぅ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130600e102">
「ようし……出た出たぁ。
　操ちゃん、口を開けて見せてごらん。零さ
ないようにねぇ」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130610b42">
「……っ……」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130620e102">
「おほ、一杯出たなぁ。ははは！
　さあ、それをどうすればいいかわかるね？」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130630b42">
「……っ。
　んっ……こく、ぅく……んくっ」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130640e102">
「飲んでる飲んでる。
　たまらないなぁ、こんな若い娘の口の中に
生臭い精子を思う存分吐き出して、そのうえ
全部飲ませるというのは！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130650b42">
「っ……」

{	NwR("cg/fw/nw社長Ａ.png");}
//嶋：修正（だけは）【090930】
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130660e101">
「ひひ、操ちゃん……こっちにもご馳走して
あげるぞぉ。
　上のお口だけじゃ足りないんだろう？」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130670e101">
「そぉ、れっ！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130680b42">
「はぁっ！」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130690e101">
「ここかぁ？
　操ちゃんの子宮口はここかぁ!?」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130700b42">
「んっ、あっ……だめ……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130710e101">
「おおっ、イイ！
　最高の締まりだっ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorSP("絵フラ", 2000, "#FFFFFF");
	Wait(200);
	CreateTextureSP("絵Ｅ200", 10, Center, Middle, "cg/ev/ev114_輪姦される操_b.jpg");
	Fade("絵フラ", 300, 0, null, true);

	SetFwR("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【操】
<voice name="操" class="操" src="voice/ma03/0130720b42">
「あっ……あぁーーーーっ！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("絵フラ", 0, 1000, null, true);
	Wait(50);
	Fade("絵フラ", 100, 0, null, true);

	Wait(50);

	Fade("絵フラ", 0, 1000, null, true);
	Wait(200);
	FadeDelete("絵フラ", 600, true);


	SetNwR("cg/fw/nw社長Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130730e101">
「うはは、イったな！
　操ちゃんもイっちゃったなぁ！」

//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130740e101">
「おじさんの精子を子宮に注がれてイっちゃ
ったんだな！」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130750b42">
「……ぁっ……はぁ……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130760e101">
「おお……まだ出る、まだ出るぞ。
　ぜぇんぶ奥の奥に出してやるぅ……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130770b42">
「うぅ……」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130780e103">
「うはぁ……会長、また濃いのを大量に出し
ましたなぁ。
　困りますよ、操ちゃんが妊娠してしまった
らどうするんです？」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130790e101">
「ふぅ……心配はいらん。
　避妊薬はちゃんと飲ませたじゃないか」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130800e103">
「完全ではありませんよ。
　稀に出来てしまうこともあります」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130810e104">
「なに、それならそれでいいじゃないですか。
　その時は操ちゃんに世界初の妊婦レーサー
になってもらいましょう」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130820e101">
「はははっ、そりゃあいい！
　大きなお腹を抱えてサーキットを飛ぶわけ
か！」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130830e102">
「話題性は充分だねぇ。
　我々もタムラに金を出す甲斐があるという
ものだ」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130840b24">
「……ははは」

{	NwR("cg/fw/nw社長Ｂ.png");}
//【ｅｔｃ／社長Ｂ】
<voice name="ｅｔｃ／社長Ｂ" class="その他男声" src="voice/ma03/0130850e102">
「どうだね、お父さん。
　そんなのもなかなか面白いとは思わないか
ね？」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130860b24">
「……え、ええ。
　それはもう、スポンサーの皆様が望まれる
のであれば」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130870e101">
「はっはっは！　そうかそうか。
　操ちゃん、お父さんもこう言っているぞ。
どうだね？　おじさんの子供を孕んでくれる
かね」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130880b42">
「……」

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0130890b42">
「……はい。
　お望みなら……」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130900e101">
「よしよし。
　操ちゃんは素直で大変よろしい」

{	NwR("cg/fw/nw社長Ｃ.png");}
//【ｅｔｃ／社長Ｃ】
<voice name="ｅｔｃ／社長Ｃ" class="その他男声" src="voice/ma03/0130910e103">
「いや、本当に。これだから情にほだされて
しまいますなぁ。
　我々にとってタムラの<RUBY text="レーサークルス">競技用劔冑</RUBY>部門への
資金援助は特に魅力的ではないのですが……」

{	NwR("cg/fw/nw社長Ｄ.png");}
//【ｅｔｃ／社長Ｄ】
<voice name="ｅｔｃ／社長Ｄ" class="その他男声" src="voice/ma03/0130920e104">
「このように身体を張って誠意を示されては
仕方がない。
　金のことは心配せず、存分にやりたまえよ、
皇路くん！」

{	FwR("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130930b24">
「……ありがとうございます」

{	NwR("cg/fw/nw社長Ａ.png");}
//【ｅｔｃ／社長Ａ】
<voice name="ｅｔｃ／社長Ａ" class="その他男声" src="voice/ma03/0130940e101">
「はっはっはっはっは！」

{	FwR("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130950b24">
（……笑っていろ）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130960b24">
（いくらでも笑え。
　お前らのことなど人間とは思っていない）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130970b24">
（牛の世話をしているようなものだ。
　金という乳を搾り出すため、餌を食わせて
糞尿の始末もしてやっているに過ぎない）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130980b24">
（家畜の世話をすれば汚れるのは当然だ……
　それだけのことだ。それだけの）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0130990b24">
（僕と操が手にする栄冠の前には……
　こんな事、何程のものでもない）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0131000b24">
（あるものか……）

{	FwR("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0131010b42">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(3000, 2000);
	}
//============================================

..//ジャンプ指定
//次ファイル　"ma03_014.nss"

}


