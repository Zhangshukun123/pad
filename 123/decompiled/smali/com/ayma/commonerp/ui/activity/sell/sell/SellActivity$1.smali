.class Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;
.super Ljava/lang/Object;
.source "SellActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 222
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->rlvGoods:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;

    iget-object v1, v0, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->etScanningCode:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell/sell/SellActivity;->hideSoftKeyboard(Landroid/view/View;)V

    return-void
.end method
