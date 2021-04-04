//<continuation number="1190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_003.nss_MAIN
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
	#bg029_ガーゲット少佐執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_キャノン=true;
	#voice_on_ガーゲット=true;

	$PreGameName = $GameName;

	$GameName = "ma03_004.nss";

}

scene ma03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_002.nss"

//◆横浜ＧＨＱ基地
//◆参謀第二部資料管理課（キャノン機関）

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg029_ガーゲット少佐執務室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm21",0,1000,true);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);


//◆以下横書きボックス（英語会話だから）

//◆こんこん。ノック音
	CreateSE("SE01","se人体_動作_ドアノック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwH("cg/fw/fwガーゲット_通常.png");

	#voice_on_ガーゲット=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030010b02">
「入れ」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ガチャ。タッ。ドア音と足音
	DeleteStA(300,true);

	CreateSE("SE01","se日常_建物_扉開く01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE01", 100, 0, null);

	CreateSE("SE02","se人体_足音_歩く03_L");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);
	SetVolume("SE02", 100, 0, null);


	StR(1100, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030020a03">
「大鳥香奈枝中尉、並びに伍長待遇軍属永倉
さよ。ただいま着任いたしました」

</PRE>
	SetTextEXH();
	TypeBeginHI();//――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);

	SetFwH("cg/fw/fwキャノン_通常a.png");

	#voice_on_キャノン=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030030b03">
「御苦労。
　俺の方も自己紹介が必要か？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030040a03">
「時間が有り余っているのであれば是非とも、
課長。
　ウィロー少将閣下からはおおまかなところ
しか伺っておりませんので」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030050b03">
「なら一応しておこうか。幸いなことに今は
ヒマだ。昨日は凄いぞ？　三時間も寝た。
　それに精力が頭髪に回ってないあの閣下殿、
本当に大まかな話しかしてないだろうしな」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030060a03">
「なんと仰っていましたかしら……
　さよ？」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030070a04">
「『中尉、貴官に任務を与える。マタ・ハリ
だ！　貴官はかの歴史的雌狐の役を連盟軍に
おいて担う栄誉を得た！　喜んでくれるもの
と信ずる。なお、ダンスの訓練は必要ない』」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030080a04">
「以上でございます」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030090b03">
「……説明が足りてるとか、足りてないとか
いう以前の問題だな。核心は突いてるがね。
　それで、中尉は何と答えた？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030100a03">
「グレタ・ガルボほどにうまく演じる自信は
ございませんけれど、と」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030110b03">
「ふむ。そいつは大和人特有の謙遜か？
　中尉ならいい線いくと俺は思うがね。半島
の片田舎から乳牛と一緒に引っ張られてきた
バイキングの子孫なんかよりずっと魅力的だ」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030120a03">
「あら、お上手。うっかりとその気になって
しまいそう。わたくしったらおだてに弱くて。
　でも、おだてに乗ろうにも脚本がなくては
どうにもなりませんね？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030130b03">
「わかってる。順々に行こう。
　クライブ・キャノンだ。参謀第二部で資料
管理課長を務めている。だが課長とは呼ぶな。
言葉の響きがどうも肌に合わない」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030140b03">
「中佐と呼んでくれればいい。
　で、こちらは俺のサポート」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030150b02">
「ジョージ・ガーゲット少佐だ。
　職務に関連する報告は主に私にしてもらう
ことになる。顔を合わせる機会も多くなるだ
ろう」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030160b02">
「色々難しいこともあるかもしれないが――
うまくやっていきたいものだな？　中尉」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030170a03">
「まったく同意いたします。
　どうか宜しくご指導のほどを。ガーゲット
少佐」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030180b02">
「握手は無用だ。
　大鳥中尉。私はうまくやろうと言ったので
あって、仲良くしようと言ったのではない」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030190a03">
「……あら。
　これは失礼をいたしました」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030200b03">
「ジョージ？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030210b02">
「何か問題でも？　中佐殿」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030220b03">
「…………まあ、こういう奴なんでな。
　あまり気にしないでやってくれ、中尉」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030230a03">
「ご心配なく。わたくし、まったく気にして
おりませんから。
　後で手を洗いに行く手間が省けましたもの」

{	FwH("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030240b02">
「…………」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030250b03">
「ハハハハ。そうかそうか。どうやらチーム
ワークは完璧だな？　俺はとても幸せだ。
　このまま少し待っていてくれ。ウィローの
親父にサイパンへの転属願いを出してくる」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030260b02">
「大鳥中尉への説明を先にお済ませください。
中佐殿」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030270b03">
「ああ、そうするよ少佐閣下。
　レディ？　この資料管理課についても簡単
に解説した方がいいのだろうな」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030280a03">
「出来ましたら。……中佐」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030290b03">
「うん？　なんだか言いにくそうだな。
　子供の頃にうっかり中佐を生で食べて腹を
壊したことでもあるのか？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030300a03">
「そうですね……。
　先日まで中佐と呼んでいた人物に少々食傷
気味だったことは否めません」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030310b03">
「ああ、コブデンの阿呆か」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030320b02">
「中佐殿。いささか表現が直截的過ぎます」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030330b03">
「じゃあ、コブデンの教養失調症にしとこう。
　聞いているか、中尉？　実は君と前後して
奴も民政局の席を失っているんだが」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030340a03">
「あら。それは初耳です。
　てっきり不出来な巡察官を更迭した功績で
昇進でもされたかと思っておりましたのに」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030350b03">
「そいつが奴の最後の仕事になった。結末は
惜しいかな、昇進ではなく左遷だが。
　今頃は横須賀の港湾基地で、新しい椅子を
痛めつけているだろうよ」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030360a03">
「湾岸のリゾート地に赴任とはお羨ましい。
　ご栄転の理由は何なのでしょう？」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030370b03">
「収賄。
　建築企業、密輸業者、幕府の官吏といった
連中から小銭を貰って便宜を図ってやる副業
に、大変な熱意をもって励んでいたようだ」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030380a03">
「あらあら。
　働き過ぎが仇になるとはお気の毒なこと」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030390b03">
「気の毒なのは民政局の他のお歴々だよ。
　奴のお陰でしばらくは副業を控えなくては
ならなくなった」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030400b03">
「目立たないように隠蔽する程度の心配りを
してくれれば、監査部だって余計な残業せず
に済むものをさ。基地の電話を使うか普通？
否が応でも摘発しなきゃならんだろうが」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030410a03">
「堂々としていて結構ではございませんか」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030420b03">
「その割りに民政局から出て行く時は堂々と
いうよりすごすごといった格好だったらしい
がな。
　話が逸れた」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030430b03">
「中尉、我々資料管理課の担う職務は何だと
思う？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030440a03">
「そうですね。
　わたくしが思いますに、おそらく――」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030450a03">
「資料を管理するのではないでしょうか」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030460b03">
「素晴らしい。まさに正解だよ大鳥中尉。
　君のように優秀な人材を見たのは初めてだ」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030470a03">
「まあ、ありがとうございます」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030480b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030490b03">
「ヘイ、ジョージ。
　話の輪に加わろうぜ」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030500b02">
「はい、中佐殿。お断りします」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030510b03">
「……まあ、実際そうなんだがさ。
　ただ一個抜けている」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030520a03">
「はい」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030530b03">
「俺たちは情報資料を<RUBY text="・・・・">収集して</RUBY>管理する。
　この収集の方が実はメインの業務になる。
オフィスにいつも人がいないのはそのせいだ」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030540b03">
「課の名前をつける時にウィロー少将閣下は
この収集っていう要素の加味を忘れたらしく
てな。お陰で実情を知らない外部からは窓際
呼ばわりだ。まったく、迷惑してるよ」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030550a03">
「……なるほど。
　それでマタ・ハリですのね」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030560b03">
「なかなかやり甲斐のありそうなセクション
だろう？　だが、俺の部下は奥ゆかしいやつ
ばかりでね……自分の仕事をよそに吹聴した
がらない。まあそういう気風なんだろう」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030570b03">
「実は俺もそうなんだ。
　申しわけないが大鳥中尉、君もその気風に
従って貰う。チームワークだ。従えない場合
はそうだな、なるたけ早目に言って欲しいね」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030580b03">
「先程君が羨んだ元上司のもとへ部下として
返り咲けるように手配する。
　実は必要な申請書類はもう用意してあるん
だが。さて？　俺はこれをどうしたらいい？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030590a03">
「まあ、行き届いたご配慮。痛み入ります。
　でもどうかご案じなく。わたくしも奥ゆか
しさにかけては最強と自負しておりますから」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030600b03">
「オーケイ、オーケイ。なら何の問題もない。
　どうだ、ガーゲット少佐。彼女なら一流の
仕事をしてくれると思うだろう？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030610b02">
「はい、中佐殿。
　小官には若干の疑念があります」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030620b03">
「どんな？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030630b02">
「大鳥中尉」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030640a03">
「はい」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030650b02">
「貴官は先の巡察官任務において、大和国の
内政に対する介入を行った。
　その点に間違いはないか」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030660a03">
「ございません」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030670b02">
「後悔、反省は？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030680a03">
「何も。
　ガーゲット少佐」

{	FwH("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030690b02">
「……ならば、釈明は？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//――――――――――――――――――――――――――


	SetFwH("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030700a03">
「<RUBY text="アンド・ソウ・オン">以下同文</RUBY>」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030710b02">
「…………。
　中佐殿」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030720b03">
「何かまずいことでもあったかい？　少佐」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030730b02">
「大きな問題があるように、小官には思われ
ます」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030740b03">
「ああ。問題はある。
　だがそいつは中尉のことじゃない」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030750b03">
「彼女のような人材を無為に遊ばせておいた
無能こそ問題だ。だから<RUBY text="・・・・・">そんなこと</RUBY>にもなる。
　そして問題は既に片付いた。そうだろう？
そうだとも。中尉には何の問題もない」

{	FwH("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030760b02">
「しかし……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030770b03">
「大鳥中尉。いや、大鳥香奈枝嬢。
　大和人としての君に訊ねる」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030780b03">
「<RUBY text="ロシア">露帝</RUBY>と<RUBY text="ブリテン">大英連邦</RUBY>、友人にするならどちらが
いい？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030790a03">
「……」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030800b02">
「…………」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030810a03">
「……白熊よりは<RUBY text="ジョン・ブル">雄牛</RUBY>の方が付き合いやすい
のではありませんかしら？　<RUBY text="ミスター">紳士</RUBY>」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030820b03">
「宜しい。大いに宜しい。
　であれば大英連邦の提唱にて生まれた国際
統和共栄連盟、ひいてはその隷下にある我々
ＧＨＱと大和国は良好な関係を築けるだろう」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030830b03">
「もはや異存はないな？　ガーゲット少佐」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030840b02">
「……はっ。
　中佐殿がそのように言われるのであれば」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030850b03">
「やれやれだ。
　堅苦しい上官を持つのは厄介なものだな、
中尉？　俺も堅苦しい部下を持っているから
よくわかる」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030860a03">
「ええ、キャノン中佐。
　嫌いではありませんけれどもね？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030870b02">
「そうか。
　だが私は、貴官のような部下を好まない」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030880a03">
「とても残念です」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030890b03">
「紳士の対応ではないな、ジョージ。
　さて、中尉。今日のところはもう下がって
構わない。だが明日から早速任務に掛かって
もらう」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030900a03">
「はい。
　どのような任務でしょう」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030910b03">
「明朝、口頭で発令する。
　だが概略はこの資料に記した。明日までに
読んでおけ。読了後は軍規に従って処分する
こと」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030920a03">
「はい。
　…………こちらは？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030930b03">
「新しい階級章だ。明日からはそれをつけて
きてくれ。
　以上だ、大鳥大尉」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030940a03">
「はっ」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030950a04">
「失礼致します」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――

//◆ガラッ。二人、出て行く
	CreateSE("SE01","se日常_建物_扉開く01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStR(300,true);

	WaitKey(300);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,false);

	SetFwH("cg/fw/fwガーゲット_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030960b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030970b03">
「まだ何か言いたげだな？　ガーゲット少佐」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030980b02">
「……キャノン中佐。
　あの大和人が信用できると本心からお考え
ですか？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030990b03">
「大和人か。彼女は人種は大和人だがね……
大和国民ではないよ。
　<RUBY text="ハプスブルク">二重帝国</RUBY>で国籍と軍籍を取得して連盟軍に
参入している」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031000b02">
「中佐、自分が言っているのはそのような事
ではなく……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031010b03">
「わかってる。
　だがこう考えてみろ、ジョージ――彼女は
果たして愚劣だろうか？」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031020b02">
「いいえ。
　黄色人種らしい陰湿な計算能力には長けて
いると思われます。だからこそ余計に――」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031030b03">
「ならば自分、あるいは大和にとっての損得
も勘定するだろう。
　彼女の言葉を覚えているか？　ロシアの熊
よりは英国紳士。実際それはその通りだ」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031040b03">
「ロシアに屈すれば農奴にされるだけなんだ
からな。中央アジアにかつて存在した諸国の
現状が証明しているように。
　六波羅幕府に至っては問題外だろう？」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031050b03">
「彼女はよもや、三者のうちからの恋人選び
を間違えたりはすまいよ。
　それで良しとしておこうじゃないか。後は
……そうだな」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031060b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031070b03">
「彼女が<RUBY text="・・・・・">賢過ぎない</RUBY>ことを願おう。
　そんなところだ」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031080b02">
「……やはり、自分には……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031090b03">
「もう言うな。
　少佐の懸念は胸に留めておく」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031100b02">
「はっ」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031110b03">
「重要なのは駒の動きを把握して使うことだ。
<RUBY text="ポーン">歩兵</RUBY>は前に一歩しか進めない。<RUBY text="ビショップ">司教</RUBY>は斜めに
走る。そいつをわかっていればいい」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031120b03">
「その意味で、彼女も、あの痩せこけた男も
全く同じことだ。
　そうじゃないか？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031130b02">
「……はい。
　それは理解できます」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031140b03">
「なら、そういうことさ」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031150b03">
「……それにしても」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031160b02">
「はい」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031170b03">
「ウィローの太鼓腹、マタ・ハリとはよくも
言ったもんだな。
　知ってるだろう？　彼女がフランスで処刑
された時の罪状は単なるスパイじゃない」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031180b03">
「<RUBY text="・・">二重</RUBY>スパイだ。
　欧州史に名だたるかの売女は、フランスと
ドイツの双方に向けて足を開いていた」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031190b02">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_004.nss"