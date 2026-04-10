.class Lcom/ayma/commonerp/base/BaseModel$7;
.super Ljava/lang/Object;
.source "BaseModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseModel;->sortList(Ljava/util/List;ILjava/lang/String;ZLcom/ayma/base/mvp/ModelCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseModel;

.field final synthetic val$isReverse:Z

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$timePattern:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseModel;IZLjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseModel$7;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    iput p2, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$type:I

    iput-boolean p3, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$isReverse:Z

    iput-object p4, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$timePattern:Ljava/lang/String;

    iput-object p5, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 534
    iget v0, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$type:I

    const/16 v1, 0x4cf

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 618
    :pswitch_0
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$9;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$9;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 606
    :pswitch_1
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$8;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$8;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 597
    :pswitch_2
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$7;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$7;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 588
    :pswitch_3
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$6;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$6;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 579
    :pswitch_4
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$5;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$5;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 567
    :pswitch_5
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$4;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$4;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 554
    :pswitch_6
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$timePattern:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$7;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const-string v2, "\u65f6\u95f4\u6392\u5e8f\u5fc5\u987b\u4f20\u5165\u65f6\u95f4\u683c\u5f0f"

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/base/BaseModel;->sendMsg(ILjava/lang/Object;)V

    return-void

    .line 558
    :cond_0
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$3;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$3;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 545
    :pswitch_7
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$2;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$2;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    goto :goto_0

    .line 536
    :pswitch_8
    new-instance v0, Lcom/ayma/commonerp/base/BaseModel$7$1;

    invoke-direct {v0, p0}, Lcom/ayma/commonerp/base/BaseModel$7$1;-><init>(Lcom/ayma/commonerp/base/BaseModel$7;)V

    :goto_0
    if-nez v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$7;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const-string v2, "\u672a\u77e5\u6392\u5e8f\u7c7b\u578b"

    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/base/BaseModel;->generateThrowable(Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/base/BaseModel;->sendMsg(ILjava/lang/Object;)V

    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/ayma/commonerp/base/BaseModel$7;->val$list:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 638
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseModel$7;->this$0:Lcom/ayma/commonerp/base/BaseModel;

    const/16 v1, 0x4ce

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/base/BaseModel;->sendMsg(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
