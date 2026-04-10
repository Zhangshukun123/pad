.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$8;
.super Ljava/lang/Object;
.source "QuerySellDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->getResources()Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$8;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->access$701(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V

    return-void
.end method
