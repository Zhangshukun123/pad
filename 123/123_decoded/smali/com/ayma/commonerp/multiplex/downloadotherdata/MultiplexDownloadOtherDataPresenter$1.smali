.class Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;
.super Landroid/os/Handler;
.source "MultiplexDownloadOtherDataPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$700(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto/16 :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$000(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto/16 :goto_0

    .line 115
    :pswitch_4
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$100(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 121
    :pswitch_5
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto/16 :goto_0

    .line 128
    :pswitch_6
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 131
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$200(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 134
    :pswitch_7
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 137
    :cond_6
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto/16 :goto_0

    .line 141
    :pswitch_8
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$300(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 147
    :pswitch_9
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto/16 :goto_0

    .line 154
    :pswitch_a
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 157
    :cond_9
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$400(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :pswitch_b
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 163
    :cond_a
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto :goto_0

    .line 167
    :pswitch_c
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 170
    :cond_b
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$500(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :pswitch_d
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    .line 176
    :cond_c
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ayma/base/mvp/ModelCallBack;->requestSuccess()V

    goto :goto_0

    .line 180
    :pswitch_e
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 183
    :cond_d
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$600(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/ModelCallBack;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/ayma/base/mvp/ModelCallBack;->requestError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :cond_e
    iget-object v0, p0, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter$1;->this$0:Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;->access$800(Lcom/ayma/commonerp/multiplex/downloadotherdata/MultiplexDownloadOtherDataPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/base/IBaseView;

    const-string v1, "\u672a\u77e5\u64cd\u4f5c"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/base/IBaseView;->showToast(Ljava/lang/String;)V

    .line 192
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x300
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
