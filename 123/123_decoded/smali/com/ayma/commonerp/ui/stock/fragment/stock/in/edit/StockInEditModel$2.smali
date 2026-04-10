.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->fetchStoreDataNoOnline(Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

.field final synthetic val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeTypeCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Lcom/ayma/base/mvp/ModelCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$modelCallBack:Lcom/ayma/base/mvp/ModelCallBack;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeTypeCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 155
    :try_start_0
    const-class v0, Lcom/ayma/commonerp/bean/StoreListBean;

    const/4 v1, 0x0

    new-array v2, v1, [J

    invoke-static {v0, v2}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v0

    .line 156
    const-class v2, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    new-array v3, v1, [J

    invoke-static {v2, v3}, Lorg/litepal/Operator;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_a

    .line 157
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v2, :cond_9

    .line 166
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 176
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/StoreListBean;

    .line 177
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v3

    .line 184
    :cond_2
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v5}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "storeId = ?"

    aput-object v8, v7, v1

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/StoreListBean;->getStoreId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v7}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-class v7, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    invoke-virtual {v4, v7}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 189
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeId:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_1
    if-eqz v0, :cond_8

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/StoreTypeListBean;

    .line 202
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v4}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$900(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->val$storeTypeCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 205
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoreTypeListBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 208
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 209
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1500(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 167
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 158
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 220
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$1700(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$4;

    invoke-direct {v2, p0, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$2;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method
