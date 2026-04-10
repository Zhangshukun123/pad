.class public Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;
.super Ljava/lang/Object;
.source "SalePaymentMoneyBean.java"


# instance fields
.field private amount12306:Ljava/lang/String;

.field private baofei:Ljava/lang/String;

.field private chengWuCan:Ljava/lang/String;

.field private chengWuZaoCan:Ljava/lang/String;

.field private chengWuZhengCan:Ljava/lang/String;

.field private diushi:Ljava/lang/String;

.field private gongZuoCan:Ljava/lang/String;

.field private guiTai:Ljava/lang/String;

.field private jieDai:Ljava/lang/String;

.field private prefrentialAmount:Ljava/lang/String;

.field private scrapLostXianjinReceipt:Ljava/lang/String;

.field private totalSales:Ljava/lang/String;

.field private tuanCan:Ljava/lang/String;

.field private vip:Ljava/lang/String;

.field private waiJu:Ljava/lang/String;

.field private weiChat:Ljava/lang/String;

.field private weichatOnline:Ljava/lang/String;

.field private weichatReceipt:Ljava/lang/String;

.field private xianJin:Ljava/lang/String;

.field private xianjinReceipt:Ljava/lang/String;

.field private yunShanFu:Ljava/lang/String;

.field private yunshanfuOnline:Ljava/lang/String;

.field private yunshanfuReceipt:Ljava/lang/String;

.field private zhengChangXiaoShou:Ljava/lang/String;

.field private zhiFuBao:Ljava/lang/String;

.field private zhifubaoOnline:Ljava/lang/String;

.field private zhifubaoReceipt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 33
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->totalSales:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhengChangXiaoShou:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->waiJu:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->tuanCan:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->vip:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->jieDai:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZaoCan:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZhengCan:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->amount12306:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianJin:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weiChat:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunShanFu:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhiFuBao:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianjinReceipt:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatReceipt:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuReceipt:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoReceipt:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatOnline:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoOnline:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuOnline:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->baofei:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->diushi:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->scrapLostXianjinReceipt:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuCan:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->gongZuoCan:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->guiTai:Ljava/lang/String;

    const-string v0, "0.00"

    .line 59
    iput-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->prefrentialAmount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount12306()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->amount12306:Ljava/lang/String;

    return-object v0
.end method

.method public getBaofei()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->baofei:Ljava/lang/String;

    return-object v0
.end method

.method public getChengWuCan()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuCan:Ljava/lang/String;

    return-object v0
.end method

.method public getChengWuZaoCan()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZaoCan:Ljava/lang/String;

    return-object v0
.end method

.method public getChengWuZhengCan()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZhengCan:Ljava/lang/String;

    return-object v0
.end method

.method public getDiushi()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->diushi:Ljava/lang/String;

    return-object v0
.end method

.method public getGongZuoCan()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->gongZuoCan:Ljava/lang/String;

    return-object v0
.end method

.method public getGuiTai()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->guiTai:Ljava/lang/String;

    return-object v0
.end method

.method public getJieDai()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->jieDai:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefrentialAmount()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->prefrentialAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getScrapLostXianjinReceipt()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->scrapLostXianjinReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSales()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->totalSales:Ljava/lang/String;

    return-object v0
.end method

.method public getTuanCan()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->tuanCan:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public getWaiJu()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->waiJu:Ljava/lang/String;

    return-object v0
.end method

.method public getWeiChat()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weiChat:Ljava/lang/String;

    return-object v0
.end method

.method public getWeichatOnline()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatOnline:Ljava/lang/String;

    return-object v0
.end method

.method public getWeichatReceipt()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getXianJin()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianJin:Ljava/lang/String;

    return-object v0
.end method

.method public getXianjinReceipt()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianjinReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getYunShanFu()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunShanFu:Ljava/lang/String;

    return-object v0
.end method

.method public getYunshanfuOnline()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuOnline:Ljava/lang/String;

    return-object v0
.end method

.method public getYunshanfuReceipt()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public getZhengChangXiaoShou()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhengChangXiaoShou:Ljava/lang/String;

    return-object v0
.end method

.method public getZhiFuBao()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhiFuBao:Ljava/lang/String;

    return-object v0
.end method

.method public getZhifubaoOnline()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoOnline:Ljava/lang/String;

    return-object v0
.end method

.method public getZhifubaoReceipt()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoReceipt:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount12306(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->amount12306:Ljava/lang/String;

    return-void
.end method

.method public setBaofei(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->baofei:Ljava/lang/String;

    return-void
.end method

.method public setChengWuCan(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuCan:Ljava/lang/String;

    return-void
.end method

.method public setChengWuZaoCan(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZaoCan:Ljava/lang/String;

    return-void
.end method

.method public setChengWuZhengCan(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->chengWuZhengCan:Ljava/lang/String;

    return-void
.end method

.method public setDiushi(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->diushi:Ljava/lang/String;

    return-void
.end method

.method public setGongZuoCan(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->gongZuoCan:Ljava/lang/String;

    return-void
.end method

.method public setGuiTai(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->guiTai:Ljava/lang/String;

    return-void
.end method

.method public setJieDai(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->jieDai:Ljava/lang/String;

    return-void
.end method

.method public setPrefrentialAmount(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->prefrentialAmount:Ljava/lang/String;

    return-void
.end method

.method public setScrapLostXianjinReceipt(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->scrapLostXianjinReceipt:Ljava/lang/String;

    return-void
.end method

.method public setTotalSales(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->totalSales:Ljava/lang/String;

    return-void
.end method

.method public setTuanCan(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->tuanCan:Ljava/lang/String;

    return-void
.end method

.method public setVip(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->vip:Ljava/lang/String;

    return-void
.end method

.method public setWaiJu(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->waiJu:Ljava/lang/String;

    return-void
.end method

.method public setWeiChat(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weiChat:Ljava/lang/String;

    return-void
.end method

.method public setWeichatOnline(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatOnline:Ljava/lang/String;

    return-void
.end method

.method public setWeichatReceipt(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->weichatReceipt:Ljava/lang/String;

    return-void
.end method

.method public setXianJin(Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianJin:Ljava/lang/String;

    return-void
.end method

.method public setXianjinReceipt(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->xianjinReceipt:Ljava/lang/String;

    return-void
.end method

.method public setYunShanFu(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunShanFu:Ljava/lang/String;

    return-void
.end method

.method public setYunshanfuOnline(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuOnline:Ljava/lang/String;

    return-void
.end method

.method public setYunshanfuReceipt(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->yunshanfuReceipt:Ljava/lang/String;

    return-void
.end method

.method public setZhengChangXiaoShou(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhengChangXiaoShou:Ljava/lang/String;

    return-void
.end method

.method public setZhiFuBao(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhiFuBao:Ljava/lang/String;

    return-void
.end method

.method public setZhifubaoOnline(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoOnline:Ljava/lang/String;

    return-void
.end method

.method public setZhifubaoReceipt(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SalePaymentMoneyBean;->zhifubaoReceipt:Ljava/lang/String;

    return-void
.end method
