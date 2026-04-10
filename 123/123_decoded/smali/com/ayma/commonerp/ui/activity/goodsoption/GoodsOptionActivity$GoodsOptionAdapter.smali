.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GoodsOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodsOptionAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/GoodsOptionBean;",
            ">;)V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTypeFirstPosition(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    .line 265
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$GoodsOptionActivity$GoodsOptionAdapter(Lcom/ayma/commonerp/bean/GoodsOptionBean;Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;Landroid/view/View;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {v0, p3}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 306
    :cond_0
    iget-object p3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p3, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQty(Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 254
    check-cast p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;I)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    const/4 v1, 0x0

    if-lez p2, :cond_2

    .line 283
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->list:Ljava/util/List;

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/commonerp/bean/GoodsOptionBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 288
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$100(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;

    move-result-object p2

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionSmallTypeAdapter;->setItem(Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_1
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 292
    :cond_2
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvTypeName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getQty()D

    move-result-wide v1

    .line 298
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/GoodsOptionBean;->getDownQty()D

    move-result-wide v3

    .line 299
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvStockQty:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvQty:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;->tvGoodsOption:Landroid/widget/TextView;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/goodsoption/-$$Lambda$GoodsOptionActivity$GoodsOptionAdapter$0GDnegw1tvzilZqG_nQrtP5lXyw;

    invoke-direct {v1, p0, v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/-$$Lambda$GoodsOptionActivity$GoodsOptionAdapter$0GDnegw1tvzilZqG_nQrtP5lXyw;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;Lcom/ayma/commonerp/bean/GoodsOptionBean;Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;
    .locals 3

    .line 275
    new-instance p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter$viewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$GoodsOptionAdapter;Landroid/view/View;)V

    return-object p2
.end method
