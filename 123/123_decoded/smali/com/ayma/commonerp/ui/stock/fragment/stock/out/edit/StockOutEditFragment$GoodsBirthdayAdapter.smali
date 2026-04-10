.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "StockOutEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodsBirthdayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;",
            ">;)V"
        }
    .end annotation

    .line 1341
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 1342
    iput-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1367
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$StockOutEditFragment$GoodsBirthdayAdapter(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;Landroid/view/View;)V
    .locals 0

    .line 1360
    iget-object p2, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditPresenter;->addGoodsBirthdayData(Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;)V

    .line 1361
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->access$400(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1337
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;I)V
    .locals 4

    .line 1353
    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;

    .line 1354
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->tvBirthday:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getBirthDay()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    const-string v3, "yyyy-MM-dd"

    invoke-static {v1, v2, v3}, Lcom/ayma/base/util/DateTimeUtils;->formatDateStr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getAutualQty()I

    move-result v0

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;->getQty()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1358
    iget-object v1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->tvQty:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$GoodsBirthdayAdapter$TWmR6O_UMIaU6_78wecOh5L4CtI;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/-$$Lambda$StockOutEditFragment$GoodsBirthdayAdapter$TWmR6O_UMIaU6_78wecOh5L4CtI;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;Lcom/ayma/commonerp/bean/data/stock/out/StockReceiptOutBody;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;
    .locals 3

    .line 1348
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ae

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/edit/StockOutEditFragment$GoodsBirthdayAdapter;Landroid/view/View;)V

    return-object p2
.end method
