.class Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2$1;
.super Ljava/lang/Object;
.source "QueryOrderPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 127
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;->access$2600(Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderView;->finishActivity()V

    return-void
.end method
