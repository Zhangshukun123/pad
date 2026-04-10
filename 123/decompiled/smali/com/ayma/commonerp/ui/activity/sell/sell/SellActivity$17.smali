.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showPayLoading(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;Ljava/lang/String;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1451
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$17;->val$tag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellPresenter;->cancelPayQueryRequest(Ljava/lang/String;)V

    return-void
.end method
