.class Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScanUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/util/ScanUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanReceiver"
.end annotation


# instance fields
.field private callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

.field final synthetic this$0:Lcom/ayma/commonerp/util/ScanUtil;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/util/ScanUtil;Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 467
    iput-object p2, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p1, "value"

    const-string v0, "\u626b\u63cf\u5f02\u5e38"

    if-nez p2, :cond_0

    .line 474
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, ""

    .line 478
    iget-object v2, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->this$0:Lcom/ayma/commonerp/util/ScanUtil;

    invoke-static {v2}, Lcom/ayma/commonerp/util/ScanUtil;->access$100(Lcom/ayma/commonerp/util/ScanUtil;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "idata tam"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x7

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "pa720"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v4, "ea630"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string v4, "ea602"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "ea560"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_5
    const-string v4, "tam3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_6
    const-string v4, "tam"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_7
    const-string v4, "pda"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v3, 0xb

    goto :goto_0

    :sswitch_8
    const-string v4, "t3"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_9
    const-string v4, "t1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_a
    const-string v4, "nls-mt69"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/16 v3, 0xa

    :cond_1
    :goto_0
    const-string v2, "length"

    if-eqz v3, :cond_11

    if-eq v3, v6, :cond_11

    const-string v4, "unitech.scanservice.data"

    const-string v6, "text"

    if-eq v3, v5, :cond_e

    const-string v5, "\u626b\u63cf\u7ed3\u679c\u4e3a\u7a7a"

    packed-switch v3, :pswitch_data_0

    .line 502
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 508
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_6

    .line 503
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 541
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const-string p1, "scan.rcv.message"

    .line 545
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 546
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    const-string p2, "\u626b\u63cf\u53c2\u6570\u5f02\u5e38"

    invoke-interface {p1, p2}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "barocode"

    .line 549
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 550
    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p1, :cond_6

    .line 553
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 554
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v7, p2}, Ljava/lang/String;-><init>([BII)V

    move-object v1, v0

    .line 556
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 557
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v5}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 542
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 525
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_3

    .line 529
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "SCAN_BARCODE1"

    .line 530
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "SCAN_BARCODE2"

    .line 533
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    .line 535
    :cond_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 536
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v5}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 526
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 516
    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_c
    const-string v0, "android.intent.action.SCANRESULT"

    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 521
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 517
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_5

    .line 495
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 496
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 497
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 492
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    :cond_11
    const-string p1, "barcode"

    .line 481
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 482
    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 484
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v7, p2}, Ljava/lang/String;-><init>([BII)V

    .line 485
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 486
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    return-void

    .line 562
    :cond_12
    :goto_6
    iget-object p1, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-interface {p1, v1}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 564
    iget-object p2, p0, Lcom/ayma/commonerp/util/ScanUtil$ScanReceiver;->callBack:Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;->fail(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x453300fe -> :sswitch_a
        0xe3d -> :sswitch_9
        0xe3f -> :sswitch_8
        0x1b0ed -> :sswitch_7
        0x1bfa0 -> :sswitch_6
        0x363493 -> :sswitch_5
        0x5bc2b93 -> :sswitch_4
        0x5bc2e9c -> :sswitch_3
        0x5bc2ef7 -> :sswitch_2
        0x6573524 -> :sswitch_1
        0x3a9cdd93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
