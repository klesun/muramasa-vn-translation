//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_2.nss_MAIN
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
	#bg033_署長宅景明私室_01=true;

	//▼ルートフラグ、選択肢、次のGameName

		$PreGameName = $GameName;
		$GameName = "mb01_003_3.nss";

}

scene mb01_003_2.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003_1.nss"


//◆署長宅、景明の部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0030010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　紙の感触からして安っぽい三流大衆紙を卓上に投げ
出し、一つ息をつく。
　胸中の困惑を全部吐き出したつもりだったが、わだ
かまりはまるで消えなかった。

　――足利護氏、<RUBY text="し">薨去</RUBY>す。

　六波羅の暴君が果てたのだ。
　何物がその命脈を断ったのかは謎であるにしても、
その死はもはや明らかな事実。

　鎌倉大番の存在さえ無かったなら、市井が祭り騒ぎ
に満ち溢れてもおかしくはないところだ。
　実際、家の中で密かに快哉を叫んでいる人は少なく
なかろう。

　しかし、仮に幕府の眼が光っていなかったとしても、
果たして快哉は家の内から町中へと拡大して時ならぬ
祝祭を本当に招き得たであろうか。
　そこまで誰もが能天気になれるだろうか？

　足利護氏は言うなれば、国家という箱の蓋を押さえ
つける<RUBY text="おもし">重石</RUBY>であった。
　箱の中のものにしてみれば、重苦しくてかなわない。

　が、いざ無くなってみると不安に駆られる。
　今や蓋はほんのそよ風で吹き飛んでしまい、冷たい
外気がすぐにも襲ってくるのではないかと……薄寒い
ものを禁じ得ない。

　喜ぶに喜べないというのが、多くの市民の心情では
なかろうか。
　
　尤も、俺の内心はまた少し風向きが違う。

　……ごく近い過去の記憶が、脳裏に再現される。
　突然の大事変と、それは無関係とは考え難かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 500, 1000, null, true);
	WaitPlay("@mbgm*", null);

..//ジャンプ指定

}


