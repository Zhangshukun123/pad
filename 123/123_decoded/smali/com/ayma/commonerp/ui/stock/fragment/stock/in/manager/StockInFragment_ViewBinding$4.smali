.class Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;
.super Ljava/lang/Object;
.source "StockInFragment_ViewBinding.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment_ViewBinding$4;->val$target:Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/in/manager/StockInFragment;->onTvEndDateLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
