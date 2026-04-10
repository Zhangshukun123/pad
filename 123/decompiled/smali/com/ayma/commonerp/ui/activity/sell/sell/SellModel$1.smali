.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;
.super Ljava/lang/Object;
.source "SellModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->commitGoodsByList(Ljava/lang/String;Ljava/lang/String;DLcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

.field final synthetic val$preReduceStock:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;Ljava/util/Map;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;->val$preReduceStock:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;->access$000(Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;->val$preReduceStock:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->updateStock(Ljava/util/Map;)Z

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellModel$1;->val$preReduceStock:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
