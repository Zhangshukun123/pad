.class Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$2;
.super Ljava/lang/Object;
.source "SellCounterPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1$2;->this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;->access$500(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterPresenter;)Lcom/ayma/base/mvp/IMvpBaseView;

    move-result-object p1

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;

    invoke-interface {p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;->finishActivity()V

    return-void
.end method
