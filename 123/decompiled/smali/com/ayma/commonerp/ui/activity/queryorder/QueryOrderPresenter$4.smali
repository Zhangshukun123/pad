.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;
.super Ljava/lang/Object;
.source "QueryOrderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->sortList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

.field final synthetic val$isNewest:Z


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;Z)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;->val$isNewest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$4100(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/MvpBaseModel;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;->val$isNewest:Z

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4$1;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderModel;->sortList(ZLcom/ayma/base/mvp/ModelCallBack;)V

    return-void
.end method
