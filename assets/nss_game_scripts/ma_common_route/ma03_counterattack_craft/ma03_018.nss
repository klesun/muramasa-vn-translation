//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_018.nss_MAIN
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

	#bg038_サーキットカーブb_01=true;
	#bg038_サーキットカーブb_03=true;
	#ev906_アベンジ走行_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_019.nss";

}

scene ma03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_017.nss"

//◆客席
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　弛緩した雰囲気の漂う中、本予選は終了に近付いて
いた。
　もう数分ほどで規定の時間となる。

　表示板には、現時点における参加各チームのベスト
ラップタイムと、その順位が示されていた。
　この頃合になるとあまり変動もない。

　現首位は翔京ウルティマ。当然の如くこれは不動。
　続いて<RUBY text="ネーデルラント">長崎鳴滝</RUBY>に拠点を置く、厳密に言うなら外国
企業のアソシエイブルがセミワークスチームに託して
繰り出した<RUBY text="レーシング・テン">ＲＧ-一〇</RUBY>。

　ヨコタン・スーパーハウンドは三位につけている。
　以下ヒラゴー、鎌倉マツイ、ゲッコーのワークスが
順々に並び、後は群小のワークスやプライベーターが
団子状に固まった成績で連なる。タムラもその中だ。

　やはり装甲競技ではワークスが圧倒的に強い。

　ポリスチームは一四位にランクインしていた。
　まずまずの健闘と言って良いだろう。だがまだ満足
しないのか、彼らの<RUBY text="ホットボルト">愛騎</RUBY>はなおも挑戦を続けている。

　明日の決勝でスタートを切る際の<RUBY text="グリッド">位置</RUBY>指定は今日の
順位に従うから、意味がないわけではないが。
　しかし、やや無理をし過ぎだと思われた。事故でも
起こしては元も子もない。

　潮時だと思うのだが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180010a04">
「タムラがスピードを落としましたね」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180020a03">
「あら、本当。
　ピットインするつもりかしら。でも……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_アベンジ加速01");

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　二人の呟きに視線を転ずる。
　最終コーナーを今、タムラの新騎体アベンジが回り
終えようとするところだった。

　成程、必要以上に速度を落としているように見える。
ピットインするのかもしれない。
　だがタムラは既に一度ピットに戻っていた筈だった。

　ある程度以上の長時間に渡るレースの場合、高速度
を保証する補助推進器の燃料が底を突くため、ピット
インは必ず必要になる。
　が、余程の長丁場でない限り二度は不要だ。

　あるいは外面からはわからない何かのアクシデント
か？
　
　そんな想像を巡らせつつ、青色騎の挙動を見守る。

　ピットには――<k>向かわなかった。

　メインストレートに滑り込む。

　そして、

//◆噴射音／爆音。
{	Fade("フラッシュ白",0,1000,null,true);
	FadeDelete("フラッシュ白", 800, false);
	MusicStart("SE01",0,800,0,1000,null,false);}
　<RUBY text="・・・・">爆発した</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180030a00">
「――――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　刹那の時間、幻が俺の視界を埋めた。
　アフターバーナーのトラブル。揮発性の高い燃料が
引火し爆発。無機物と有機物を巻き込んで粉砕、粉塵
に等しい破片をサーキットに散布する――

　幻だった。
　爆音の如き噴射音が脳を撹乱して映し出させた虚像
に過ぎない。

　実像は<k>
　　　　　　　　　　　閃光。

　<RUBY text="・・・・・・・・・・・・">メタリックブルーの閃光が</RUBY>。
　メインストレートを、<RUBY text="はし">迅</RUBY>っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ・ダッシュ。
//◆技名をつけるとライトニングなんちゃら。
//嶋：EV指定：ev906_アベンジ走行_b.jpg

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEXadd("絵EV300", 3000, Center, Middle, "cg/ef/resize/ef023_アベンジ_直進_l.jpg");
	CreateColorEXadd("絵色100", 1500, "White");

	Rotate("絵EV300", 0, @0, @0, @-32, null,true);
	Move("絵EV300", 0, @-200, @+60, null, true);
	SetBlur("絵EV300", true, 3, 500, 200, false);

	CreateTextureEX("絵EV10", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵EV200", 1500, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");

	SetBlur("絵EV200", true, 3, 300, 100, false);

	Request("絵EV100", Smoothing);

	CreateTextureEX("Rollbg001", 100, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	Fade("Rollbg001", 0, 1000, null, true);

	CreateTextureEX("Rollbg002", 100, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	Fade("Rollbg002", 0, 1000, null, true);

	CreateSCR1("@Rollbg001","@Rollbg002",500,-4000, @0);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵色100", 0, 500, null, false);
	Move("絵EV300", 500, @+500, @0, Dxl1, false);
	Fade("絵EV300", 500, 1000, null, false);
	DrawTransition("絵色100", 250, 0, 600, 100, null, "cg/data/slide_05_00_1.png", true);
	Fade("絵EV300", 250, 0, null, false);
	DrawTransition("絵色100", 250, 600, 0, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(100);

	CreateSE("SE01","se特殊_陰義_磁力加速03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("絵EV100", 5000000, 2, 1, 0, 0, 1000, null, false);
	Fade("絵EV10", 300, 1000, null, false);
	Fade("絵EV200", 300, 700, null, false);
	Zoom("絵EV200", 1000, 2000, 2000, null, false);
	Move("絵EV200", 1000, @+300, @0, null, false);
	Fade("絵EV100", 500, 1000, null, true);
	Fade("絵EV200", 1000, 0, null, false);

	CreateColorEX("絵暗転", 30000, "#000000");

	Wait(1000);

	SetVolume("SE01", 1500, 0, null);

	Fade("絵暗転", 1000, 1000, null, true);

	PrintGO("上背景", 30000);

	SCR1stop();
	Delete("@Circuit*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//◆貴賓席
	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180040a08">
「なっ……」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0180050a07">
「ひょー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット？
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw皇路_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180060b24">
「操――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180070a03">
「あ――」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180080a02">
「え――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵k100", 1000, -1608, -426, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureEX("絵k200", 2000, -1608, -426, "cg/bg/bg038_サーキットカーブ_01 アーチ02.png");


	Move("絵k200", 2000, @-1320, @+200, Dxl1, false);
	Move("絵k100", 2000, @-1320, @+200, Dxl1, false);
	Fade("絵k200", 500, 1000, null, false);
	Fade("絵k100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　何を口にする暇もない。
　マウンド上でピッチャーの投げた一四〇キロの速球
が突然、<RUBY text="・・">銃弾</RUBY>に変貌するのを目の当たりにしたのなら、
知性持つ人間として言うべき事はある筈だったが――

　思う間に、ストレートを駆け抜けた青光はコーナー
へ突入している。
　エアブレーキによる減速――<k>足りない！　到底足り
ない！　あんな速度では曲がり切れない！

　クラッシュする――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コーナーリング
	CreateTextureEX("絵ef100", 3000, 0, -576, "cg/ef/resize/ef023_アベンジ_カーブ_l.jpg");
	SetBlur("絵ef100", true, 3, 500, 50, false);

	Fade("絵ef100", 200, 1000, null, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	BezierMove("絵ef100", 1000, (@0,@0){-512,-576}{-756,-400}(-1024,-211){-756,-150}{-256,-100}(0,-40), Dxl1, false);

	Wait(900);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　――捻じ伏せた。
　力ずくで。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180090a03">
「そんな、あほな……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180100a04">
「お嬢さま、お下品でございますよ……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180110a02">
「……普通、空中分解とかしないか？　今の」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　酷いコーナーリングだった。
　最短距離も最少効率もあったものではない。

　だが……兎にも角にも曲がり切った。
　あの速度で。

　それは奇跡ではない。
　信じ難い事だったが、乱暴というにも酷烈な騎航は
なお続く。

　Ｓ字カーブ。
　緩いバンク。
　１３０Ｒ。

　立ちはだかる関門に対して、減速という必要代価を
踏み倒し続けながら、タムラ・アベンジは走破する。
　凄惨に。

　これほど無惨で、
　これほど醜悪で、
　これほど低劣で、

　これほどまでに速い、<RUBY text="アーマーレーサー">装甲騎手</RUBY>が――
　過去に一度でも存在したろうか。

　断定できる。
　こんなものはいなかったと。

　こんな――
　悪魔のような騎手は何処にもいなかった。

　バックストレートを疾走。
　息一つ吸う間はおろか、瞬き一つの間さえなく。

　スプーンカーブに突入……
　<RUBY text="・・・・">押し切る</RUBY>。

　かつてあらゆる騎手を屈服させ、隷従せしめ、頭を
低くして通過することのみを許してきたこの急カーブ
の権威が、この反逆者には通じない。
　一切の礼儀を払わず、彼女はコーナーを蹴り散らす。

　走り抜けるという表現さえ最早相応しくはなかった。
　踏み潰している。剛力に任せて。

　それは――
　ただの、暴力だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180120b24">
「これだ……
　これだ！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180130b24">
「これを造りたかった」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180140b24">
「<RUBY text="・・">これ</RUBY>を造りたかったんだ!!」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180150b24">
「これなら、超えられるぞ……
　世界を……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180160b24">
「世界を――超えられる!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg038_サーキット直線_01.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	Shake("絵背景200", 5000000, 2, 1, 0, 0, 1000, null, false);
	FadeDelete("上背景", 500, true);
	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【操】
<voice name="操" class="操" src="voice/ma03/0180170b42">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180180a03">
「……ウィングが<RUBY text="・・">変動</RUBY>している……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180190a00">
「大尉殿？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180200a03">
「動いています。
　あのリアウィングは。コーナーへ入る時に
……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180210a03">
「あれが騎体を押し流そうとする気流を叩き
伏せているのです。
　……おそらくは」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180220a00">
「…………。
　そういえば、耳にしたことがあります」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180230a00">
「<RUBY text="・・・">可変式</RUBY>ウィングマウントという構想を。
　実用化する人間がいるとは、思いませんで
したが……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180240a04">
「パワー過剰の中枢設計。
　流線型の甲鉄。
　低角度のダンパー。
　可変式ウィング……」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180250a04">
「結果は直線における<RUBY text="スコーチ">爆走</RUBY>と、曲がればいい
という程度の<RUBY text="コーナーリング">旋回性能</RUBY>。
　……無茶苦茶な騎体でございますね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180260a00">
「しかし確かに、<RUBY text="・・">思想</RUBY>はありました」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180270a03">
「ええ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180280a02">
「あたしにもわかります。
　……あの騎体が言いたいことは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　最後のコーナーを今、アベンジは曲がり切った。
　ホームストレートへ帰還……駆け抜けて、<RUBY text="コントロールライン">基準線</RUBY>を
越えてゆく。

　記録――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180290a02">
「<RUBY text="・・・・・・">速けりゃいい</RUBY>。
　それだけなんだ。それだけしか考えてない
んだ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一分二六秒〇八。
　翔京の<RUBY text="ウルティマ">理想</RUBY>に次ぐ第二位の成績を、タムラの<RUBY text="アベンジ">逆襲</RUBY>は
打ち立てていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆貴賓席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180300a08">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0180310a07">
「どうよ？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180320a08">
「ふ、ふんっ。
　まあいいわ……これで明日の決勝も楽しく
なりそうだものね」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180330a08">
「麿の大会に華が添えられるのは喜ばしいわ。
　タムラの健闘を称えてあげましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(400);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0180340e284">
「……くっ。
　いかんな。予想外だ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	ClearWaitAll(2000, 1000);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180350a00">
「……む？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180360a02">
「どうしました？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　興奮冷めやらぬ観客席の中。
　俺はふと目を<RUBY text="すが">眇</RUBY>めて、この場所からは最も遠いヘア
ピンカーブの辺りを眺めやった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180370a00">
「――事故か」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180380a04">
「煙が上がっておりますね。サンドトラップ
に突っ込みましたか。
　さほどの大事ではないようですが……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180390a03">
「あらぁ？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180400a04">
「お嬢さま？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180410a03">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180420a00">
「大尉。何か」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180430a03">
「景明さま。
　……あれ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180440a00">
「はい」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180450a03">
「ポリスチームです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_019.nss"