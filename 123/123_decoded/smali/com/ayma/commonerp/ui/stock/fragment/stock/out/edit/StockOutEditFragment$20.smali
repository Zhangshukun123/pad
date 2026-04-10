.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$20;
.super Ljava/lang/Object;
.source "StockOutEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->lambda$showChangeCountDialog$4(Landroid/widget/EditText;ILjava/util/List;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

.field final synthetic val$postition:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;I)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$20;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iput p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$20;->val$postition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 932
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$20;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    iget p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$20;->val$postition:I

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->delItem(I)V

    return-void
.end method
