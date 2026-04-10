.class Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;
.super Ljava/lang/Object;
.source "MultiplexDownloadGoodsModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->saveGoodsData(Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$json:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    iput-object p2, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$json:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 107
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$500(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;)V

    .line 108
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$600(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;)Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$json:Ljava/lang/String;

    const-class v2, Lcom/ayma/commonerp/bean/GoodsDataBean;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsDataBean;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iget-object v1, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->this$0:Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6570\u636e\u8f6c\u6362\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$json:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;->access$700(Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestError(Ljava/lang/Throwable;)V

    return-void

    .line 113
    :cond_0
    const-class v1, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 114
    const-class v1, Lcom/ayma/commonerp/bean/SuppliersBean;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 115
    const-class v1, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 116
    const-class v1, Lcom/ayma/commonerp/bean/BigGoodsTypesBean;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 117
    const-class v1, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 118
    const-class v1, Lcom/ayma/commonerp/bean/StoreGoods;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 119
    const-class v1, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 120
    const-class v1, Lcom/ayma/commonerp/bean/BarcodeBean;

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/litepal/Operator;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsDataBean;->getGoodsInfoDtos()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsDataBean;->getSuppliers()Ljava/util/List;

    move-result-object v2

    .line 124
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsDataBean;->getBigGoodsTypes()Ljava/util/List;

    move-result-object v3

    .line 125
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsDataBean;->getSmallGoodsTypes()Ljava/util/List;

    move-result-object v4

    .line 126
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsDataBean;->getStores()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 129
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getBarcode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 130
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBarcode(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 134
    invoke-static {v2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 136
    invoke-static {v3}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 138
    invoke-static {v4}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 145
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsPrice()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 147
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_4
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSuppliers()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 151
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    .line 152
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->setGoodsId(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_6
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsBarcodes()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 159
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ayma/commonerp/bean/BarcodeBean;

    .line 160
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/BarcodeBean;->setGoodsId(Ljava/lang/String;)V

    goto :goto_3

    .line 163
    :cond_7
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 166
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "-"

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/BarcodeBean;

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/BarcodeBean;->getGoodsBarcodeId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/BarcodeBean;->getGoodsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 171
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 172
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsSuppliers;

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->getSupplierId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsSuppliers;->getGoodsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 180
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 181
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 185
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/GoodsPriceBean;

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getGoodsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/GoodsPriceBean;->getGoodsPriceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 189
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 190
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 191
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 193
    invoke-static {v4}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 194
    invoke-static {v3}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 195
    invoke-static {v2}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ayma/commonerp/bean/StoresBean;

    .line 201
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/StoresBean;->getStoreId()Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/StoresBean;->getStoreType()Ljava/lang/String;

    move-result-object v11

    .line 203
    invoke-virtual {v2}, Lcom/ayma/commonerp/bean/StoresBean;->getGoods()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;

    .line 204
    new-instance v12, Lcom/ayma/commonerp/bean/StoreGoods;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->getGoodsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->getQty()D

    move-result-wide v7

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/StoresBean$GoodsIdsBean;->getBirthDay()Ljava/lang/String;

    move-result-object v9

    move-object v3, v12

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/ayma/commonerp/bean/StoreGoods;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 205
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 208
    :cond_d
    invoke-static {v1}, Lorg/litepal/Operator;->saveAll(Ljava/util/Collection;)Z

    .line 209
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadgoods/MultiplexDownloadGoodsModel$2;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelParamCallBack;->requestSuccess(Ljava/lang/Object;)V

    return-void
.end method
