.class Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryTeamPickupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryTeamPickupAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TeamPickupBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectStatueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/TeamPickupBean;",
            ">;)V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 257
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->selectStatueMap:Ljava/util/Map;

    .line 260
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->list:Ljava/util/List;

    .line 261
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$QueryTeamPickupActivity$QueryTeamPickupAdapter(Lcom/ayma/commonerp/bean/TeamPickupBean;Ljava/lang/String;ILandroid/view/View;)V
    .locals 1

    .line 293
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TeamPickupBean;->isSelect()Z

    move-result p4

    const/4 v0, 0x1

    xor-int/2addr p4, v0

    invoke-virtual {p1, p4}, Lcom/ayma/commonerp/bean/TeamPickupBean;->setSelect(Z)V

    .line 294
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/TeamPickupBean;->isSelect()Z

    move-result p1

    if-nez p1, :cond_0

    .line 295
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->selectStatueMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->selectStatueMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :goto_0
    invoke-virtual {p0, p3}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 255
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;I)V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/TeamPickupBean;

    .line 273
    rem-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 278
    :goto_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getGoodsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvReceiveCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getTeamHandoverQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvWarehouseReceiveCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getOutQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvTotalCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getSumQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->tvAddCount:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->getFieldOutQty()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$1;

    invoke-direct {v3, p0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->selectStatueMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->selectStatueMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Lcom/ayma/commonerp/bean/TeamPickupBean;->setSelect(Z)V

    .line 291
    iget-object v2, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/TeamPickupBean;->isSelect()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v2, Lcom/ayma/commonerp/ui/activity/queryteampickup/-$$Lambda$QueryTeamPickupActivity$QueryTeamPickupAdapter$0DVSmF823ViPh0KKuR_iOXs7D5s;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/-$$Lambda$QueryTeamPickupActivity$QueryTeamPickupAdapter$0DVSmF823ViPh0KKuR_iOXs7D5s;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;Lcom/ayma/commonerp/bean/TeamPickupBean;Ljava/lang/String;I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;
    .locals 3

    .line 267
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryteampickup/QueryTeamPickupActivity$QueryTeamPickupAdapter;Landroid/view/View;)V

    return-object p2
.end method
