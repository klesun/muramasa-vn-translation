//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_016.nss_MAIN
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
	#bg039_競技場客席a_01=true;
	#bg038_サーキット直線_01=true;
	#bg037_競技場ガレージa_01=true;
	#ev906_アベンジ走行_a=true;
	#ev906_ウルティマ走行_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_アベンジ=true;
	#av_ウルティマ・シュール=true;

	$PreGameName = $GameName;
	$GameName = "ma03_017.nss";

}

scene ma03_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_015.nss"

//◆合流

	PrintBG("上背景", 30000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　拡声器を通したアナウンスが新たなチームの参戦を
伝える。
　そして、コース上に姿を現す騎体。

　
　――翔京兵商ワークスチーム〝三城七騎衆〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm36",0,1000,true);

//◆ウルティマ。部分的表示。演出適当
	#av_ウルティマ・シュール=true;

//嶋：EV指定：ev907_ウルティマ走行.jpg
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, @+200, @-200, null, true);

	Request("絵ウルティマ1", Smoothing);
	Request("絵背景100", Smoothing);


	Move("絵背景100", 10000, @0, @+100, null, false);
	Move("絵ウルティマ*", 10000, @0, @+200, null, false);

	Fade("フラッシュ白",500,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　それは名騎アプティマに似ていた。
　その改良騎ダガーアプティマにも似ていた。
　派生騎パルチザンにも似ていた。

　だが、そのどれとも違った。
　……黄金色の翼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",500,1000,null,true);
//◆ウルティマ。部分的表示。演出適当
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, 0, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");

	CreateTextureEXadd("絵ウルティマ2", 11100, 0, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");

	Move("絵ウルティマ*", 0, @0, @+200, null, true);

	Move("絵背景100", 5000, @-512, @0, null, false);
	Move("絵ウルティマ*", 7000, @-2000, @0, null, false);

	Fade("フラッシュ白",300,0,null,true);

	Fade("絵ウルティマ2", 0, 700, null, false);
	DrawTransition("絵ウルティマ2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("絵ウルティマ2", 1000, 0, null, false);
	DrawTransition("絵ウルティマ2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵ウルティマ*");
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, -402, -279, null, true);

	Move("絵背景100", 0, @-25, @0, null, false);
	Move("絵ウルティマ*", 0, @-50, @0, null, true);

	Move("絵背景100", 500, @+25, @0, null, false);
	Move("絵ウルティマ*", 500, @+50, @0, null, false);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　
　――<RUBY text="レーサー">騎手</RUBY>　<RUBY text="くるま">来馬</RUBY><RUBY text="ごう">豪</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160010a00">
「やはりチェーンドライブで来たか……
　しかし」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160020a04">
「あの甲鉄――
　あれは和鉄ではございませんな」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160030a03">
「ええ、間違いありません。
　……ユーツ鋼です。全身、すべて」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ。ここで全身像。
//◆モチーフはターボオプティマあたりか。
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 1000, 1000, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dウルティマ_立ち_通常_l.png");
	Move("絵ウルティマ*", 0, -942, -619, null, true);
	Request("絵ウルティマ1", Smoothing);
	Zoom("絵ウルティマ1", 0, 400, 400, null, true);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　
　――騎体名〝<RUBY text="ウルティマ・シュール">　理想　</RUBY>〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160040a02">
「ユーツ鋼って……聞いたことあるけど。
　インドの鉄だろ？　確か、すっげえ高い」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160050a03">
「ええ。生産量がごく少ないのです。
　けれど重量比強度に優れるユーツ鋼は――
競技用劔冑の材料としてまさに理想的」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160060a04">
「これまではごく一部のハイエンドモデルが
翼などの重要箇所にだけ用いておりました。
　……その最高級鋼材を、よもや、ここまで
惜しみなく投入して劔冑を造るとは……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160070a02">
「どうなるんだ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160080a00">
「すぐにわかる。
　サーキットを見ろ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160090a02">
「え――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　異様な光景がそこにあった。
　黄金翼の騎士が、ストレートを駆けている。

　その速さは付近を走る数騎とほぼ同等。
　あるいはやや劣るか。
　だが、おおむね変わらない程度の速度で――

　<RUBY text="と">騎航</RUBY>んでいる。
　<RUBY text="・・・">一周目</RUBY>、<RUBY text="・・・・・・">スタート直後</RUBY>の騎体が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160100a02">
「……どういうことです？　これ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160110a00">
「怪物がいる、という事だ。
　無論、慣らし運転を充分にこなしていたの
だろうが……それにしても」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160120a04">
「異常、という他はない加速性でございます。
　完全ユーツ鋼製という特徴がもたらす常識
外の軽量さで<RUBY text="・・">あれ</RUBY>を実現しているのでありま
しょうが……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160130a03">
「あの加速性は決勝レースで真価を発揮する
はず。スタート直後の乱戦をあの威力で切り
抜けて、後はひたすらトップを<RUBY text="はし">騎航</RUBY>り続ける
のでしょう……ね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　それぞれに、呆れる以外にないという表情で感想を
呟く俺ほか三名。
　いや、俺達だけではなかった。観客らも熱狂を忘れ、
ただただ唖然として、疾駆する金色を見つめている。

　魅入られたように。
　サーキット場としておよそ考えられない静寂の中を、
翔京の〝理想〟――ウルティマ・シュールは王者その
ものの傲岸ぶりで駆け続ける。

　二周、三周……
　周回を経るにつれ、いよいよその異様な本性は露わ
になる。

　五周目ラップ、一分二六秒八九。
　六周目ラップ、一分二六秒四四。
　七周目ラップ――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160140a00">
「……一分二六秒二七」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160150a02">
「まだ走ってるけど……
　まだ記録は伸びるってことか……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160160a03">
「……さよ。
　さっきのスーパーハウンドの記録はどうで
したかしら……？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160170a04">
「……一分二七秒一九でありましたかと。
　実に、一秒近い差でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　周回時間で一秒差。
　アーマーレースという競技、この鎌倉サーキットと
いう舞台においては、圧倒的と言っても良い程の差だ。

　それが――
　海外レーサーの手によってではあるが世界を制した
こともある横森鍛造の<RUBY text="スーパーハウンド">超越猟犬</RUBY>との間に。

　見れば、一度は退いたヨコタンワークスが再び騎体
を引っ張り出してコース上に現れている。
　……無駄だろうに。しかも意味がない。予選でウル
ティマに勝とうが負けようがそれで勝負は決まらない。

　明日の上位を確保している以上、後は敵の観察だけ
しておけばいいのだ。
　が、そう思いつつも――俺はヨコタンの心情を理解
できるような気がしていた。

　混乱しているのだ。
　おそらくは、まともな判断ができなくなるほど。

　ギャンブル化推進派の同胞とはいえ、おそらくこの
騎体のことまでは知らされていなかったのだろう。
　あわよくば勝利を奪い、賭博化後の主導権を握る気
でいたのかもしれない。

　そしてそんな夢想がはかなく砕かれたことを、まだ
認められずにいる――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160180a02">
「……荒っぽい<RUBY text="はしり">騎航</RUBY>ですね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160190a00">
「ああ。あれは早く退かせた方がいい。
　事故を起こすだけだ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160200a03">
「翔京が下がっていきます……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160210a04">
「一三周で切り上げたようでございますね。
　記録は……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そこで初めて、観客席は喧騒を取り戻した。
　誰もが表示板に目を向けている。

　――一分二五秒九七。
　俺の記憶に誤りが無いなら、それは鎌倉サーキット
の落成式に招かれた欧州のトップレーサー達の記録に
肉薄するレベルの数値だった。

　現時点において、二位はヨコタンワークス。
　……二位以下に一秒以上の差で首位。

　誰かの呟きが耳に入った。<k>
　
　――明日の決勝なんて、やる意味ねえじゃんか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160220a03">
「ですねぇ……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160230a04">
「はぁ。これでは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　同じ声を聞いていたのだろう。大鳥主従が顔を見合
わせている。
　一条は、口惜しそうにしていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160240a02">
「ちっ。なんだよ。
　金で勝ったようなもんじゃねぇか……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160250a00">
「そうだな。
　だがレースはそういうものだ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160260a00">
「金と。そして技術と、運と……
　それらの総合力で勝敗が決する」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160270a00">
「どれか一つが抜きん出ていれば、他の面で
劣っていても勝つ事ができる。
　資金面の優位は特に有効である場合が多い」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160280a02">
「……すいません、湊斗さん。
　あたし、やっぱりこの競技はあまり好きに
なれないかも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　申し訳なさそうな声に、俺は答えるのはやめた。
　無理もないことだと思った。

　ウルティマという騎体の強さには、見る者へ狂熱を
導くと同時に――いま一条が直視したレースの実情を
知らしめて、心中のどこかに憮然たるものを抱かせる
ようなところがあった。

　俺自身も、そう感じている。
　凄いものだとは思うが、素直に賞賛はし難い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160290a03">
「騎手の力量も相当なものではありますけど、
ね……。
　あれだけの加速力を有する騎体、つまりは
じゃじゃ馬を乗りこなしているのですから」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160300a04">
「来馬豪、とかいう名でしたか。
　はて、あまり聞いたことがございませんが
……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160310a00">
「草レースでは知られた男です。
　レーサー養成団体『蛙の穴』を一人で叩き
潰したほか、非公式に海外へ渡航して欧州の
選手と戦ったこともあるとか」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160320a03">
「……また、怪しげな経歴ですこと」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160330a00">
「実力は確かに一級品です」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160340a02">
「だったら、あんな金ピカの騎体なんか使わ
ないで実力で勝負すりゃいいのに……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　優秀な騎体を得ることも実力の内に違いない。
　だが、それも口にはせずにおく。

　一条の胸中にあるらしい落胆を、俺もどうやら共有
していた。
　自覚していた以上に、タムラの勝利を期待する念は
強かったようだ。翔京の圧勝に苦いものを禁じ得ない。

　一心に部品を磨いていた、少女の姿を思い出す。
　これは父の心血だと告げた、その言葉を思い出す。

　……翔京には翔京なりの正当性があるに違いないの
だ。六波羅と組んでいるからといって、彼らまでもが
悪の権化だという理屈はない。
　その程度のことはわかる。

　それでもやはり――
　心理の素直な表層は、タムラにこそ勝って欲しいと
願っていた。

　…………。<k>
　
　そういえば。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160350a00">
「タムラはどうしたのでしょうか」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160360a04">
「そろそろ出て来るようでございますよ。
　ピットからスタッフが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　老侍従に言われて見れば、慣れ親しむタムラのロゴ
を背負った作業員がスタート周辺を慌しく動き回って
いるところだった。
　皇路氏らしき姿もある。帽子を深く被っているが。

　アナウンスが響いた。
　最後の大物の登場を知って、観客達がざわめく――
何とはなし、お義理めいた気配を漂わせながら。

　仕方もない。誰もが既に勝負は見えたと感じている。
　翔京と長年に渡って争ってきた宿敵の登場にも、今
一つ盛り上がり切れない。そんなある種つまらなげな
空気が形成されてしまっていた。

　
　――田村甲業ワークスチーム〝<RUBY text="タムラ・ファイティング・ファクトリー">　Ｔ・Ｆ・Ｆ　</RUBY>〟

　空虚な、<RUBY text="よせ">寄席</RUBY>の<RUBY text="サクラ">湧かせ役</RUBY>が無駄に奮闘しているかの
ような肌寒い歓声の下、タムラワークスは出撃準備を
整える。
　その整然たる働きぶりさえ、今は物悲しさを増す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160370a03">
「登場が少し遅いですね。
　セッティングに手間取っていたのかしら？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160380a04">
「どうでしょう。
　予選で翔京と張り合う愚を知り、避けたの
かもしれませぬな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　スタッフの平静な様子を見るに、永倉侍従の言の方
が説得力を有すると思えた。
　であればその判断は正しい。あんな魔物と共に騎航
したところで得るものは何も無いだろう。

　自分より速い走者と共に走ると記録が伸びることが
多い、とは云うが。
　限度というものがある。兎と亀が競走すれば、普通
の亀は途中で馬鹿馬鹿しさに支配されるに違いない。

　
　――騎手　皇路操

　瞬間、それまでとは違う、本物の歓声が上がる。
　皇路操はいわゆるカリスマを備えたレーサーだった。
普段の静かな物腰、相反して苛烈な騎航、その両者が
カクテルされて独特の魅力を形作っている。

　彼女の姿にかつての英雄の面影を想う者も多い。
　世代の違いを問わず、二代目の皇路は絶大な人気を
誇っていた。

　……しかしそのカリスマへ捧げられるべき声援も、
今日ばかりは本人の登場を待たずして色褪せてゆく。
　一瞬の沸騰は一瞬で終わり、観客はすぐに、自分ら
のヒロインが勝利から遥か遠いことを思い出していた。

　まばらになってゆくさざめきと拍手を浴びながら、
雲間から差す薄い日差しのように彼女は現れる。
　父が創り出した劔冑を纏って。

　
　――騎体名……

　その、
　刹那。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＢＧＭ停止
	SetVolume("@mbgm*", 300, 0, null);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160390a00">
「――――」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160400a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　サーキット内の。
　あらゆる光が固定され、あらゆる風が流れを止めた。

　あらゆる思考が、同じ方向を指した。
　停止した世界で、誰もが音のない声で、ただ一言を
主張していた。

　――あれは、何だ。
　――あれは、何だ。
　――あれは、何だ。

　<RUBY text="・・・">あれは</RUBY>、<RUBY text="・・">何だ</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ。モチーフは無論タ○ヤ・アバンテ。
//◆この登場シーンの演出は凝り凝りで。
	#av_アベンジ=true;

//嶋：素材到着要調整
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);

	MovieSESet(20000,"mvアベンジ登場","se特殊_mv用_アベンジ登場");
	MovieSEStart(2000);

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg038_サーキット直線_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵アベンジ1", 11000, -333, -667, "cg/st/resize/3dアベンジ_立ち_通常_l.png");

	Move("絵背景100", 5000, @0, @+200, null, false);
	Move("絵アベンジ1", 5000, @0, @+300, null, false);
	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　それは嘗て、どのような企業も、どのようなチーム
も、造り上げた<RUBY text="ためし">例</RUBY>のないカタチをしていた。
　全く前例の無い、<RUBY text="レーサークルス">競技用劔冑</RUBY>。

　劔冑？
　これは、劔冑か？

　奇形。
　歪んだ姿。
　凝視すれば、平衡感覚を失いかねない程に。

　狂っている。
　この造形は、狂っている。

　この形を造り上げた人間は心を病んでいる。
　間違いなく、脳神経系の大切な<RUBY text="ネジ">螺子</RUBY>を一本、外して
しまっている。

　頬を掻き毟りたい、そんな狂躁さえ呼び起こされる。
　そして、それと糸一筋で危うく均衡を取っているか
のような、感慨――

　美しい。
　いたたまれぬほどに、美しい。

　円周率を無理矢理解き明かして形容したかのような
流線型のフォルム。
　そこにメタリックブルーのカラーリングが重なれば、
それは無限の海であり果てなき空だ。

　異界の美。
　あってはならないもの。
　禁忌の芸巧。

　今――
　そんな代物が、サーキットに立っている。

　
　――騎体名<k>〝<RUBY text="アベンジ">逆襲</RUBY>〟

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

//◆ＢＧＭ
	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160410a02">
「なっ……
　なんなんですかっ、あれ！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160420a00">
「わ――わからん」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160430a03">
「あれは……本当にタムラの騎体なのかしら。
　ホットボルトの系統とは全く、根本の構想
からして違うとしか考えられません」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160440a04">
「ホットボルトからスーパーボルト、チャク
ラム、そしてサンダーボルトと、積み重ねて
きた技術財産をほとんど無視しておりますね。
　……あれは本当に<RUBY text="はし">騎航</RUBY>るのでしょうか？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。皇路父との会話


	OnSE("se擬音_フラッシュバック01",1000);
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想", 200, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStA(0,true);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw皇路_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0160450b24">
「どうでしょう？
　タムラ始まって以来の駄作になるかもしれ
ません。その可能性はあります。すでにそう
声高に言っている者も社内にはいますよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	DeleteStA(0,true);
	Delete("絵回想*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　さよ侍従の疑問に、昨日聞かされた話が重なる。
　……今。現物を前にしてみれば、それは当然という
ほかなく。

　こんな発想に、常人がついていける筈もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160460a00">
「…………。
　発想」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160470a03">
「景明さま？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160480a00">
「あの騎体はまさしく異様です。他に言葉が
見つかりません。
　しかし、強烈な思想性を感じます」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160490a00">
「素人が出鱈目に組んだだけなのであれば、
ああはならないでしょう」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160500a04">
「……同感でございます。
　何と申しましょうか。あの騎体はあれだけ
常識を無視したデザインを為されているにも
拘わらず、<RUBY text="・・・・">まとまり</RUBY>があると……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160510a00">
「ええ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160520a03">
「そうですね……。
　あの姿には明確で攻撃的な表現――激しい
主張があるようにわたくしにも見えます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　そうでなくては、あの美しさは有り得ない。
　あれは例えば、風雨に削られた岩山が数千年かけて
達成する無想の美とは全く違う。
　その対極だ。

　己の力を過信し盲信した彫刻家が変哲もない石塊を
削り、削り続け、原形を失うまでに変貌を遂げさせ、
遂に妄想を実現して輝く宝石に造り変えてしまったと
でもいうような――横暴極まる美術。

　あれは、そういったものだ。
　そこには確かな思想が――<RUBY text="・・">妄想</RUBY>がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160530a02">
「その主張は……
　どういう……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160540a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　問われても、答えようはない。
　<RUBY text="はしり">騎航</RUBY>を見てみなくては。

　眼下の戦場で、それが始まろうとしている――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆走行開始
//嶋：EV指定：ev906_アベンジ走行_a.jpg

	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	CreateTextureEX("絵EV200", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	SetBlur("絵EV200", true, 3, 500, 100, false);

	OnSE("se特殊_鎧_レース_加速02",1000);

	Fade("絵EV200", 300, 500, null, false);
	Zoom("絵EV200", 500, 1200, 1200, null, false);
	Move("絵EV200", 500, @+100, @0, null, false);
	Fade("絵EV100", 300, 1000, null, true);
	Fade("絵EV200", 300, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……滑り出しは<RUBY text="ゆるゆる">緩々</RUBY>と。
　ホームストレートを静穏に、青の騎体が流れてゆく。

　平凡な加速。
　平凡な速度に達して、コーナーへ。

　第一コーナーは大したカーブではない。
　さほど速度を殺さずとも、安定して曲がり切れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160550a00">
「……？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160560a03">
「…………？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160570a04">
「……はて……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160580a02">
「ん？
　今なんか、<RUBY text="・・・・">ばたばた</RUBY>してなかったか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160590a03">
「え、ええ……。
　まだ騎体に慣れていないのかもしれません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　短い直線を抜け、緩いカーブをこなして進む。
　速度は出ていないが、一周目であればおかしいこと
とは言えない。先の翔京が異常だったのだ。

　長いバンク。
　ゆったりと曲がってゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160600a03">
「攻めませんね」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160610a04">
「まあ、一周目でございますし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　外見に反して目を引くところのない騎航。
　観客席には拍子抜けのような空気と、本気を出すで
あろう後の周回に期待する空気とが混ぜこぜになって
広がりつつあった。

　その空気にあてられたせいか。
　俺は本来の目的を思い出していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160620a00">
「村正。
　あれは――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160630a01">
《違う》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160640a00">
「…………。
　確かか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160650a01">
《怪しい部分は何もなし。
　相変わらず銀星号の気配は感じるけれど、
あれとは関わりないようね》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160660a00">
「……そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　実の所、意外だった。
　直感的に、あれしかあるまいと俺は思い込んでいた
からだ。

　あの設計の底に覗く<RUBY text="たぎ">滾</RUBY>るような熱意。
　いかにも銀星号が目をつけそうに思えるのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160670a00">
「では、ウルティマはどうだった。
　黄金色の翼を持っていた騎体だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160680a01">
《同じく何もなし、よ。
　今日これまでに見たものは全部、白》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0160690a01">
《これからまだ出てくるの？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160700a00">
「いや。
　そろそろ打ち止めの筈だが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　……どういう事だ？
　タムラでも翔京でもない。それ以外の騎体でもない？

　コースに目を戻す。
　本予選参加騎はすべてここにいる、あるいはいたと
思える。おそらく確かだ。一番最後に登場したものが、
あの、注目を集める青い騎体だった筈――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0160710a02">
「跳ねたっ!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160720a00">
「ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　思わずして目を剥く。
　アベンジを再び視界に収めた、まさにその瞬間。

　ヘアピンカーブを曲がるタムラ騎は<RUBY text="・・・・・">跳ねていた</RUBY>。
　速度と旋回がもたらす空力抵抗に押し負ける格好で
――

　騎体後部が跳ね上がっている。
　……喜劇じみた横流れ。カーブの曲線に全く沿って
いない。少なからぬロス。

　皇路卓が誇った技術など見る影もない。
　無惨なコーナーリングだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0160730a04">
「アンダーステアかと思えば……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0160740a03">
「リバースオーバーでしたね。
　……よくあのまま横転しなかったもの、と
は思いますけれど」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0160750a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　昨日皇路親子と会話を交わした身として、口に出す
のは憚られたものの。
　胸中には呟かずにいられない。

　酷い騎体だ。

　周囲でも落胆の声が上がっている。
　翔京ウルティマの傍若無人な騎航に対抗できる唯一
の可能性をタムラの新型騎に見ていた人間は、きっと
少なくなかったのだろう。

　今日の見るべきものは見尽くした、そう顔に書いて
席を立つ客の姿もちらほらとあった。
　貴賓席の方には特に多い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 150, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"ma03_017.nss"