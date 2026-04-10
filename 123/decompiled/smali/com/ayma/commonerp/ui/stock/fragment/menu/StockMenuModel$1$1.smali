.class Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;
.super Ljava/lang/Object;
.source "StockMenuModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;Lcom/ayma/commonerp/bean/RequestHeaderBean;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 58
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 59
    const-class v0, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->val$bean:Lcom/ayma/commonerp/bean/RequestHeaderBean;

    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/RequestHeaderBean;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->decryptStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$200(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)V

    .line 62
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$300(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;)V

    .line 63
    invoke-virtual {v2}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateBean;

    .line 67
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateBean;->getTemplateInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;

    .line 71
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;->getGoodsInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 73
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;

    .line 74
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoHead;->getOutTemplateId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockOutTemplateInfoBody;->setOutTemplateId(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 82
    :cond_3
    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 83
    invoke-static {v2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 92
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;->this$1:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/menu/StockMenuModel$1$1;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method
