.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;
.super Ljava/lang/Object;
.source "StockInEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->searchGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

.field final synthetic val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$companyId:Ljava/lang/String;

.field final synthetic val$isScanAdd:Z

.field final synthetic val$supplier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$supplier:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$callBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$code:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$companyId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$isScanAdd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 320
    :try_start_0
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v0

    .line 321
    iget-object v2, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$2800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$supplier:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "supplierId=?"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 323
    invoke-static {v4}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-class v7, Lcom/ayma/commonerp/bean/SuppliersBean;

    invoke-virtual {v4, v7}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 324
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_9

    .line 334
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/SuppliersBean;

    .line 335
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/SuppliersBean;->isValid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 336
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3200(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;

    invoke-direct {v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 364
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "select   sg.birthday,  sg.qty,  gi.goodstypeid,  sp.supplierid,  max(gc.barcode),  gi.goodscode,  gi.goodsid,   gi.goodsname,  gi.goodsstate,  gi.validflag,  gi.startday,  gi.stopday,  sp.startday as spstartday,  sp.stopday as spstopday,  sp.supplierid,  sp.costprice,  sp.costprice0,  sp.costshuilv from      goodsinfodtosbean as gi     left join barcodebean as gc on gc.goodsid =gi.goodsid      left join goodssuppliers as sp on sp.goodsid = gi.goodsid     left join storegoods as sg on sg.goodsid = gi.goodsid where ( gc.barcode = ? or gi.goodscode = ? )  and gi.companyid = ? and sp.supplierid=?"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v6

    .line 391
    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$code:Ljava/lang/String;

    aput-object v7, v8, v5

    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$code:Ljava/lang/String;

    aput-object v7, v8, v3

    const/4 v3, 0x3

    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$companyId:Ljava/lang/String;

    aput-object v7, v8, v3

    const/4 v3, 0x4

    aput-object v2, v8, v3

    invoke-static {v8}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 392
    invoke-interface {v2, v6}, Landroid/database/Cursor;->move(I)Z

    .line 393
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 394
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "goodscode"

    .line 395
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    .line 399
    :cond_2
    new-instance v8, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-direct {v8}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;-><init>()V

    .line 400
    invoke-virtual {v8, v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsCode(Ljava/lang/String;)V

    const-string v7, "goodsid"

    .line 401
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 402
    invoke-virtual {v8, v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsId(Ljava/lang/String;)V

    const-string v9, "goodsname"

    .line 403
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsName(Ljava/lang/String;)V

    const-string v9, "goodsstate"

    .line 404
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setGoodsState(Ljava/lang/String;)V

    const-string v9, "birthday"

    .line 405
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setBirthday(Ljava/lang/String;)V

    const-string v9, "costprice"

    .line 406
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice(D)V

    const-string v9, "costprice0"

    .line 407
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostPrice0(D)V

    const-string v9, "costshuilv"

    .line 408
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setCostShuilv(D)V

    const-string v9, "startday"

    .line 409
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStartDay(Ljava/lang/String;)V

    const-string v9, "stopday"

    .line 410
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setStopDay(Ljava/lang/String;)V

    const-string v9, "qty"

    .line 411
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setQty(D)V

    const-string v9, "supplierid"

    .line 412
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setSupplierId(Ljava/lang/String;)V

    const-string v9, "validflag"

    .line 413
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->setValidFlag(Ljava/lang/String;)V

    .line 414
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "spstartday"

    .line 417
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 418
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v9, "spstopday"

    .line 419
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 420
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 423
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 425
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3400(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$3;

    invoke-direct {v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 434
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 439
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    .line 441
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isValidFlag()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    .line 442
    :goto_2
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isEnable()Z

    move-result v11

    if-nez v11, :cond_6

    const/4 v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    .line 443
    :goto_3
    invoke-virtual {v9, v0}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->isInValidityPeriod(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x1

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    .line 444
    :goto_4
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v13

    .line 445
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 446
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 447
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 448
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 449
    invoke-static {v15, v0}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_9

    invoke-static {v14, v0}, Lcom/ayma/base/util/DateTimeUtils;->compareDate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v8, 0x1

    :cond_a
    :goto_6
    if-nez v10, :cond_c

    if-nez v11, :cond_c

    if-nez v12, :cond_c

    if-eqz v8, :cond_b

    goto :goto_7

    .line 474
    :cond_b
    new-instance v10, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    invoke-direct {v10}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;-><init>()V

    .line 475
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setBirthDay(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostPrice(D)V

    .line 477
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostPrice0()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostPrice0(D)V

    .line 478
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getCostShuilv()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setCostShuilv(D)V

    .line 479
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setGoodsCode(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v10, v13}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setGoodsId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setGoodsName(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getQty()D

    move-result-wide v11

    double-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setAutualQty(I)V

    .line 483
    invoke-virtual {v10, v5}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setQty(I)V

    .line 484
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getSupplierId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setSupplier(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getValidFlag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;->setValidFlag(Ljava/lang/String;)V

    .line 486
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 452
    :cond_c
    :goto_7
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_d

    const-string v10, " \u65e0\u6548"

    .line 454
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    if-eqz v11, :cond_e

    const-string v10, " \u88ab\u7981\u7528"

    .line 457
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    const-string v10, "\u81f3"

    if-eqz v12, :cond_f

    :try_start_1
    const-string v11, " \u4e0d\u5728\u6709\u6548\u671f\u5185\uff0c"

    .line 460
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\u6709\u6548\u671f\u4e3a\uff1a"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStartDay()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v9}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getStopDay()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz v8, :cond_10

    const-string v9, " \u4e0d\u5728"

    .line 466
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$supplier:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\u4f9b\u5e94\u6709\u6548\u671f\u5185\uff0c\u5176\u6709\u6548\u671f\u4e3a\uff1a"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v9, "\n"

    .line 471
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 488
    :cond_11
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 491
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 492
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3600(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$4;

    invoke-direct {v3, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 502
    :cond_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_13

    iget-boolean v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->val$isScanAdd:Z

    if-eqz v0, :cond_13

    .line 504
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;

    .line 505
    iget-object v3, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-virtual {v3, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->addGoodsToList(Lcom/ayma/commonerp/bean/data/stock/in/StockReceiptInBody;)Lcom/ayma/commonerp/bean/ListItemOptionBean;

    move-result-object v0

    .line 506
    iget-object v3, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v3, v6}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3702(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;Z)Z

    goto :goto_8

    .line 509
    :cond_13
    new-instance v0, Lcom/ayma/commonerp/bean/ListItemOptionBean;

    invoke-direct {v0}, Lcom/ayma/commonerp/bean/ListItemOptionBean;-><init>()V

    .line 510
    invoke-virtual {v0, v7}, Lcom/ayma/commonerp/bean/ListItemOptionBean;->setData(Ljava/lang/Object;)V

    .line 512
    :goto_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 513
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/ListItemOptionBean;->setMessage(Ljava/lang/String;)V

    .line 515
    :cond_14
    iget-object v2, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3800(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$5;

    invoke-direct {v3, v1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;Lcom/ayma/commonerp/bean/ListItemOptionBean;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 325
    :cond_15
    :goto_9
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$3000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$1;

    invoke-direct {v2, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 522
    iget-object v2, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;->access$4000(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$6;

    invoke-direct {v3, v1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5$6;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/edit/StockInEditModel$5;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method
