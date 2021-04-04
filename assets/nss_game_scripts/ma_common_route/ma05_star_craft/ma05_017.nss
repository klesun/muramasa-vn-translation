//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_017.nss_MAIN
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
	#ev137_首領輪姦=true;
	#ev137_首領輪姦_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_018.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#ma05_017=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma05_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"ma05_016.nss"
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦.jpg");
	Delete("上背景");

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦.jpg");

	//リコ背景抹消
	RecoIn();
}
//========================================================


	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170010b31">
「いやぁ……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170020b31">
「やめて……もうやめてっ」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170030b31">
「はなして……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領無惨。
	SoundPlay("@mbgm34",2000,1000,true);
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170040e083">
「だめですよぉー、御館ぁ。
　まだ始まったばっかじゃないですか」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170050e084">
「順番待ちがあと何人残ってると思ってるん
です？
　音を上げるにゃ早過ぎますって」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170060b31">
「くっ……うぅ……
　恥知らずども……！　こんな、寄ってたか
って……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170070e085">
「仕方ないじゃないですか。右手以外で済ま
せるのがどんだけぶりだと思ってるんです、
オレ達。
　女の調達を御館が認めてくれなかったから」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170080e086">
「そうそう。
　町には若くていい女も結構いるってんのに、
なんで指くわえて眺めてなきゃいけなかった
んだか……あー思い出したらまた勃ってきた」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170090e086">
「咥えてくださいよ、御館」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170100b31">
「やっ……近づけないで、そんなもの！
　この、下郎！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170110e086">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170120e083">
「おいおい、殴ったりするなよ。
　せっかくの別嬪が台無しになったら興醒め
しちまう」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170130e086">
「いや、そうじゃなくてさ」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170140e083">
「ん？」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170150e086">
「……なんかゾクゾクしてきた」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170160e083">
「……ああ、そう」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170170e086">
「へへへへへ！
　じゃあこんなことしちまおっかなぁー！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170180b31">
「……いやぁっ！
　何をするの、アタシの髪で……！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170190e086">
「綺麗な髪に、我ながら汚いモノをだ、こう
擦り付けて……
　おお、垢が落ちる落ちる」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170200b31">
「ひっ……」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170210e086">
「あぁ、なんか心の隙間が満たされるよ。
　オレの人生、今最高に充実してる……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170220e084">
「最低だこの男」

//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170230e084">
「だが、アリだ」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170240e085">
「アリだな」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170250e083">
「良し、オレも充実するぜ！
　ほら御館、髪が嫌なら口を使ってください」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170260b31">
「んっ!?
　やっ、んむっ……ぐ、んふっ！」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170270e083">
「歯を立てないでくださいよー。
　そんなことしたら歯ぁ全部抜いちまいます
からねー」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170280b31">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170290e083">
「おお……女の口、やっぱ最高。
　下の穴よりこっちのが好きだなー、オレ」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170300e085">
「そうかぁ？　変なヤツ。
　オレは正統派の、こっちだねっ……と！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170310b31">
「んんっ!?」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170320e085">
「ひっひっ。どうです御館？
　一番奥の奥を、突き上げられる気分は」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170330b31">
「やめて、苦しい……
　痛いのっ、っ……やめてったらっ！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170340b31">
「ああっ！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170350e085">
「いやぁ、すいませんねえ。
　こっちはコレが一番イイんで」

//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170360e085">
「くぁー、たまらん。
　さっきまで処女だったって思うとなおたま
らん」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170370b31">
「うぅ……！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170380e085">
「泣かないでくださいよぉ、御館。
　大丈夫、すぐに御館も気持ち良くなります
って」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170390b31">
「だ、誰が、おまえ達なんかに……ああっ！
やだ、そんな……激しくしないで！」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170400e085">
「きたきたきた！
　波がきたぁーーー!!」

//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170410e085">
「一気にいくぜ！
　御館に<RUBY text="なか">膣内</RUBY>出し一発！」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170420b31">
「やめてぇっ！
　せめて、抜いて……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170430e085">
「生物学的に断る！
　おらっ、子宮口に擦り付けてっ……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170440b31">
「あぁ……
　あーーーーーーっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorEX("絵白濁", 5000, "#FFFFFF");
	Fade("絵白濁", 200, 1000, null, true);
	WaitKey(1000);
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev137_首領輪姦_b.jpg");

	FadeDelete("絵白濁", 2000, true);

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170450b31">
「うっ……
　……くぅ……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170460e085">
「はーーー……
　堪能」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170470e086">
「思う存分ぶち撒けやがって。
　お前の一発だけでも妊娠は確定だな」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170480e085">
「ははは。
　御館を犯して孕ませましたなんて知ったら、
うちの死んだオヤジ、どんな反応するかなー」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170490e084">
「うぇっ。萎えるようなこと言うな！
　絶対に殺されちまうよ、うちだったら」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170500e086">
「平気だって。
　オレら、新しい御館の命令に従ってるだけ
だもん」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170510e083">
「ああ。この女はもう御館じゃねえ。
　けっ……大体なぁ、平民と戦って負けたり、
あげくにオレらを百姓にしようとする御館が
いてたまるかってんだ」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170520b31">
「……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170530e084">
「そりゃそうだな。
　じゃ、次はオレ行こうっと」

//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170540e084">
「あー……でも、ガバガバに開いちまってる
なぁ。あんまり良くなさそう」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170550e085">
「六人連続でやっちまったからなぁ」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170560e084">
「ま、とりあえず<RUBY text="い">挿入</RUBY>れるか。
　よっと」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170570b31">
「んっ……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170580e084">
「……やっぱいまいち。
　御館ぁー、もっと締めて下さいよ。気持ち
よくないっすよ？」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170590b31">
「くぅっ……！
　勝手なこと……言わないで……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170600b31">
「おまえ達が、何度も、何度も……
　アタシの<RUBY text="なか">膣内</RUBY>に出したから……！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170610e084">
「そらまーそーなんですが。
　どうしたもんかなー」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170620b32">
「これ使いなよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆チャッ。金属音
	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw山賊Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170630e084">
「御舎弟？
　……御館の太刀じゃないですか。こんなの
どうするんです？」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170640b32">
「柄をその女の尻に突っ込んでやれば？
　そうすれば少しはきつくなるでしょ」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170650b31">
「……!?」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170660e084">
「……おお！
　さすが御舎弟、じゃなくて御館！　そいつ
はとっても科学的ですねっ！」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170670e086">
「お前は科学を勘違いしてるしバカにしてる。
　だが、アリだ」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170680e085">
「アリだな」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170690b31">
「ひっ……！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170700b32">
「良かったね、姉さん。
　まだまだ<RUBY text="・・・">使って</RUBY>貰えそうだよ」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170710b31">
「かっ……一磨……
　やめさせて……！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170720b32">
「……」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170730b31">
「一磨……！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0170740b32">
「何してんの？
　早くやっちゃいなよ」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170750e083">
「へへへ……
　お指図とあらば」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170760e085">
「さあ御館、おとなしくしましょうねー。
　足を広げて、お尻をこっちに向けてっ、と
……あぁ、暴れない暴れない」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170770b31">
「やだ！　やだぁ！
　離してぇッ！　お願い、許して！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EV100", 4000, 0, 0, "cg/ev/resize/ev137_首領輪姦_bm.jpg");

	Move("絵EV100", 2000, -503, @0, Dxl1, false);
	Fade("絵EV100", 1000, 1000, null, true);

	SetNwR("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170780e083">
「よしよし。
　穴を広げて……うわ、ちぃせぇなぁ」

{	NwR("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170790e086">
「本当だ。
　御館、こんなちっちゃい肛門で、用を足す
ときに不自由とかしないんですかぁ？」

{	NwR("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170800e085">
「おー、可愛い穴だ。
　御館らしいですねぇ」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170810b31">
「やぁっ！
　そんなところ、みんなで見ないでぇっ！」

{	NwR("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170820e084">
「まぁまぁ。そう言わずに。
　オレらみんな、御館みたいに身分の高い女
の尻の穴を見るのなんて初めてなんですから」

{	NwR("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170830e083">
「それに尻どころじゃないもんもう見せてる
でしょう。
　さっきは御館の膣に、処女膜も、みんなで
観察してあげたじゃないですか」

{	NwR("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170840e085">
「そうそう。膜破った後はもう一度広げて、
精子が流れ込んでる子宮口をじっくり鑑賞も
したし」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170850b31">
「うっ……うぅ……！」

{	NwR("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170860e086">
「さぁーて。では柄を当ててっと。
　入るかなー？　まぁやってみるか」

//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170870e086">
「じゃあいきますよー、御館」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170880b31">
「……いや……」

{	FwR("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170890b31">
「いやぁぁぁぁぁぁぁぁぁぁぁぁ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆龍槌閃・惨。
//◆ブラックアウト？
	CreateColorEX("絵黒", 5000, "#000000");
	Fade("絵黒", 2000, 1000, null, true);

	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01");
	MusicStart("SE01",0,1000,0,750,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(2000);

	SetFwC("cg/fw/fw首領_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆壊れ
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170900b31">
「…………」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0170910e086">
「おおー。
　入るもんだねえ。ちょっと裂けてるけど」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0170920e084">
「いよーし！　締まってきた！
　御館の中で柄と擦れ合う感覚が……なんか
こう、イイ！」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0170930e083">
「楽しそうだな。
　だがオレは我が道を行くぜ！　ほら御館、
すっかり口がお留守ですよ。舐めるとかしゃ
ぶるとかしてくださいって」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0170940e085">
「オレはどーすっかな。
　胸でも使うか。柔らかくていい感じっぽい
しー」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0170950b31">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"ma05_018.nss"