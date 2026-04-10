.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$11;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->showCommitType(Ljava/util/List;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1082
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$11;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->setCommitBtnEnable(Z)V

    return-void
.end method
