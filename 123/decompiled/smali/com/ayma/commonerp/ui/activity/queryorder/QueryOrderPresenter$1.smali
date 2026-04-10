.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;
.super Landroid/os/Handler;
.source "QueryOrderPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "\u672a\u77e5\u5f02\u5e38"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 85
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b5b\u9009\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$800(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$900(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 77
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$1100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u7b5b\u9009\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 69
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$700(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6392\u5e8f\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    goto :goto_2

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->hideLoading()V

    .line 61
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->notifyListDataChanged()V

    .line 62
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    const-string v1, "\u6392\u5e8f\u5b8c\u6210"

    invoke-interface {v0, v1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->showToast(Ljava/lang/String;)V

    .line 89
    :goto_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x159
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
