.class Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;
.super Ljava/lang/Object;
.source "SellCounterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;->this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;->this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->access$002(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;)Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    .line 182
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1$1;->this$1:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->switchToOpenShop()V

    return-void
.end method
