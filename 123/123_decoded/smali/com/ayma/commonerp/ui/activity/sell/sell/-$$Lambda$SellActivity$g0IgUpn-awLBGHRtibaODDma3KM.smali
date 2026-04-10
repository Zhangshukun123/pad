.class public final synthetic Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$3:Z

    iput-object p5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$1:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$3:Z

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$4:Ljava/lang/String;

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/-$$Lambda$SellActivity$g0IgUpn-awLBGHRtibaODDma3KM;->f$5:Ljava/lang/String;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->lambda$showConfirmGoodsDialog$9$SellActivity(Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
