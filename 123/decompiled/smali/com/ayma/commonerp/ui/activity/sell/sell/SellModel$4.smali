.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;
.super Ljava/lang/Object;
.source "SellModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->updateStock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->access$1100(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$4;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->access$1000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->updateStock(Ljava/util/List;)Z

    return-void
.end method
