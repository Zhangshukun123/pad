.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;
.super Lcom/chockqiu/libflextags/view/FlexTags$Adapter;
.source "StockOutEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->notifyTrainList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

.field final synthetic val$layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0

    .line 1101
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->val$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->val$list:Ljava/util/List;

    invoke-direct {p0}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->val$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindView$0$StockOutEditFragment$23(ILandroid/view/View;)V
    .locals 0

    .line 1113
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->removeSelectedTrain(I)V

    return-void
.end method

.method public onBindView(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f080537

    .line 1109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080536

    .line 1110
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 1111
    iget-object v1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->val$list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$23$Yl0TfdR0XRkwe6Ix7MYkBEyjUwc;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$23$Yl0TfdR0XRkwe6Ix7MYkBEyjUwc;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$23;->val$layoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
