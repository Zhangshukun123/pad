.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;
.super Ljava/lang/Object;
.source "OnlinePayModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->updateStock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$2500(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Lcom/ayma/commonerp/litepal/LitepalUse;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel$5;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;->access$2400(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayModel;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/litepal/LitepalUse;->updateStock(Ljava/util/List;)Z

    return-void
.end method
