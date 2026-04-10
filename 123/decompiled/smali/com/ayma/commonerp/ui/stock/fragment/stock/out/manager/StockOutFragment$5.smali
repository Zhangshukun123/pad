.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;)V
    .locals 1

    .line 228
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->access$202(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Z)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 224
    check-cast p1, Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$5;->onChanged(Lcom/ayma/commonerp/eventbus/StockOutUpdateEvent;)V

    return-void
.end method
