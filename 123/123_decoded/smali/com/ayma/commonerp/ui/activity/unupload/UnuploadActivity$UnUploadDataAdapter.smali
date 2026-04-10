.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "UnuploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnUploadDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/SellDetailBean;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 152
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 148
    check-cast p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;I)V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 164
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getQty()D

    move-result-wide v0

    .line 167
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSalesPrice()D

    move-result-wide v2

    .line 169
    iget-object v4, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v4, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsAllPrice:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/ayma/base/util/ArithUtil;->mul(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellType:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSaleType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPayType:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getPaymentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellTime:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getSellTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;
    .locals 3

    .line 158
    new-instance p2, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;Landroid/view/View;)V

    return-object p2
.end method
