.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;
.super Ljava/lang/Object;
.source "StockOutEditModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->addGoodsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ayma/base/mvp/ModelParamCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

.field final synthetic val$code:Ljava/lang/String;

.field final synthetic val$isScanAdd:Z

.field final synthetic val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

.field final synthetic val$storeId:Ljava/lang/String;

.field final synthetic val$storeModelId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/base/mvp/ModelParamCallBack;Z)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$code:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$storeModelId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$storeId:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$modelParamCallBack:Lcom/ayma/base/mvp/ModelParamCallBack;

    iput-boolean p6, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$isScanAdd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "salesprice"

    .line 599
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select distinct    sg.birthday,   sg.storeid,   sg.qty as sgqty,   gi.goodsname,   gi.goodsid,   gi.goodscode,   gi.qty as giqty,   gi.packqty,   gi.unit,   gi.validflag,   gi.goodsstate,   gp.salesprice,   gp.salesprice0,   sp.costprice,   sp.costprice0,   sp.costshuilv,   sp.stopday  from    goodsinfodtosbean as gi   left join goodssuppliers as sp on sp.goodsid = gi.goodsid    left join goodspricebean as gp on gp.goodsid = gi.goodsid    left join barcodebean as gc on gc.goodsid = gi.goodsid    left join storegoods as sg on sg.goodsid = gi.goodsid  where( gi.goodscode = ? or gc.barcode = ? ) and sg.storetype = ? and sg.storeid = ? and gp.saletype = \'\u6b63\u5e38\u9500\u552e\'  group by sg.birthday  order by sg.birthday asc "

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 631
    iget-object v3, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$code:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v3, 0x2

    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$code:Ljava/lang/String;

    aput-object v7, v4, v3

    const/4 v3, 0x3

    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$storeModelId:Ljava/lang/String;

    aput-object v7, v4, v3

    const/4 v3, 0x4

    iget-object v7, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$storeId:Ljava/lang/String;

    aput-object v7, v4, v3

    invoke-static {v4}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 632
    invoke-interface {v3, v5}, Landroid/database/Cursor;->move(I)Z

    .line 635
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_8

    :try_start_1
    const-string v4, "goodscode"

    .line 636
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "birthday"

    .line 637
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "stopday"

    .line 638
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "goodsstate"

    .line 639
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "validflag"

    .line 640
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 641
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    const-string v13, "salesprice0"

    .line 642
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v13

    .line 646
    iget-object v15, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v15}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v15, :cond_2

    .line 647
    :try_start_2
    iget-object v15, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v15}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x1

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 648
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 649
    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v5

    move-object/from16 v18, v15

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAutualQty()I

    move-result v15

    if-gt v5, v15, :cond_1

    .line 650
    invoke-virtual {v6, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEndDay(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v6, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsState(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v6, v10}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValidFlag(Ljava/lang/String;)V

    .line 653
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v16, 0x0

    goto :goto_2

    :cond_0
    move-object/from16 v18, v15

    :cond_1
    :goto_2
    move-object/from16 v15, v18

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    :cond_3
    if-eqz v16, :cond_7

    .line 660
    :try_start_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 663
    :cond_4
    new-instance v5, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-direct {v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;-><init>()V

    const-string v6, "storeid"

    .line 664
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setStoreNumId(Ljava/lang/String;)V

    const-string v6, "goodsid"

    .line 666
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v15, "sgqty"

    .line 667
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v15

    const-string v1, "giqty"

    .line 668
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    const-string v1, "packqty"

    .line 669
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 670
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 679
    invoke-virtual {v5, v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsId(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsCode(Ljava/lang/String;)V

    const-string v4, "goodsname"

    .line 681
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsName(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v5, v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setBirthDay(Ljava/lang/String;)V

    .line 683
    invoke-virtual {v5, v8}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEndDay(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v5, v11, v12}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice(D)V

    .line 685
    invoke-virtual {v5, v13, v14}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setSalesPrice0(D)V

    const/4 v4, 0x0

    .line 686
    invoke-virtual {v5, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 688
    invoke-virtual {v5, v15}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setAutualQty(I)V

    const/4 v4, 0x1

    .line 689
    invoke-virtual {v5, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasStore(Z)V

    .line 690
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmpl-double v4, v6, v11

    if-lez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v5, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setHasPrice(Z)V

    if-le v1, v15, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 692
    :goto_4
    invoke-virtual {v5, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEnough(Z)V

    .line 693
    invoke-virtual {v5, v10}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValidFlag(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v5}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->isValidFlag()Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setValid(Z)V

    .line 695
    invoke-virtual {v5, v9}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setGoodsState(Ljava/lang/String;)V

    const-string v1, "unit"

    .line 696
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setUnit(Ljava/lang/String;)V

    const-string v1, "costprice"

    .line 697
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice(D)V

    const-string v1, "costprice0"

    .line 698
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostPrice0(D)V

    const-string v1, "costshuilv"

    .line 699
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setCostShuilv(D)V

    .line 701
    invoke-static {}, Lcom/ayma/base/util/DateTimeUtils;->getDateToyyyyMMdWithNoneSep()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->isInValidityPeriod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 702
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 718
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 730
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_9

    move-object/from16 v1, p0

    .line 731
    :try_start_4
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4700(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;

    invoke-direct {v3, v1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$1;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v1, p0

    .line 740
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 741
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 742
    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAutualQty()I

    move-result v5

    invoke-virtual {v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v6

    if-gt v5, v6, :cond_a

    .line 743
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 747
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 748
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 749
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_c

    .line 750
    iget-object v3, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$4900(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$2;

    invoke-direct {v4, v1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$2;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    iget-boolean v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->val$isScanAdd:Z

    if-eqz v0, :cond_f

    .line 760
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 761
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v6}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 762
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 763
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getEndDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setEndDay(Ljava/lang/String;)V

    .line 764
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5200(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$3;

    invoke-direct {v3, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$3;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 775
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->setQty(I)V

    .line 776
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$2500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 779
    :cond_f
    iget-object v0, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5300(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$4;

    invoke-direct {v3, v1, v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$4;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 787
    :goto_7
    iget-object v2, v1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;

    invoke-static {v2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;->access$5500(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$5;

    invoke-direct {v3, v1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8$5;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditModel$8;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method
