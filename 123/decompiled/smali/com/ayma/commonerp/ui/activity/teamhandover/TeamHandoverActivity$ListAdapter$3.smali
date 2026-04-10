.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

.field final synthetic val$wareData:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$wareData:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$holder:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$ViewHolder;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 643
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->this$1:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u8981\u5220\u9664"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;->val$wareData:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 644
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$1;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter$3;)V

    const-string v1, "\u63d0\u793a"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    .line 643
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    return p1
.end method
