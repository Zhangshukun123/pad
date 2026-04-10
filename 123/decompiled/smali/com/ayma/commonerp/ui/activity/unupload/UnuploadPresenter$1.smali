.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;
.super Ljava/lang/Object;
.source "UnuploadPresenter.java"

# interfaces
.implements Lcom/ayma/base/mvp/ModelCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestError(Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$300(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$400(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->hideLoading()V

    return-void
.end method

.method public requestFailure(Ljava/lang/Throwable;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$600(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->hideLoading()V

    return-void
.end method

.method public requestSuccess()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$000(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$100(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->hideLoading()V

    .line 51
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->access$200(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;

    invoke-interface {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadContact$IUnuploadView;->notifyDataChange()V

    return-void
.end method
