.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "StockOutFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->onTvOutDayClick(Landroid/view/View;)V

    return-void
.end method
