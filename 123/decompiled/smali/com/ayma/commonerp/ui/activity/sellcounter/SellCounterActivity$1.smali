.class Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;
.super Ljava/lang/Object;
.source "SellCounterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchToOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;)V

    const-string v1, ""

    const-string v2, "\u5373\u5c06\u91cd\u65b0\u6fc0\u6d3b\u5f00\u5e97\uff0c\u8bf7\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    const-string v5, "\u786e\u8ba4"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
