.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2$1;
.super Ljava/lang/Object;
.source "SellPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 190
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 191
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->access$1200(Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellContact$ISellView;->finishActivity()V

    return-void
.end method
