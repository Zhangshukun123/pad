.class Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QueryReceiptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiptListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/QueryReceiptBean;",
            ">;)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$QueryReceiptActivity$ReceiptListAdapter(Lcom/ayma/commonerp/bean/QueryReceiptBean;Landroid/view/View;)V
    .locals 0

    .line 325
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptPresenter;->queryEtcDetail(Lcom/ayma/commonerp/bean/QueryReceiptBean;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 232
    check-cast p1, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;I)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v0, p2

    .line 247
    iget-object v1, v11, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/ayma/commonerp/bean/QueryReceiptBean;

    .line 248
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getBillNo()Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v1, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCount:Landroid/widget/TextView;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvOrderNo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvReview:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getPostShowName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCreteDate:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getCreateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvCompany:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getCompany2Name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getCreateShowName()Ljava/lang/String;

    move-result-object v4

    .line 255
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvUser:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getHandover()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandover:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandoverHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandover:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandoverHint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvHandover:Landroid/widget/TextView;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getToTrainName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getToOutDay()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getHandover()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "%s(%s)-%s"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getTrainName()Ljava/lang/String;

    move-result-object v8

    .line 265
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getOutDay()Ljava/lang/String;

    move-result-object v9

    .line 266
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getStoreTypeName()Ljava/lang/String;

    move-result-object v7

    .line 267
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getSupplierNameShort()Ljava/lang/String;

    move-result-object v2

    .line 269
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStationName:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getSourceType()Ljava/lang/String;

    move-result-object v6

    .line 271
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvFrom:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getOpStoreType()Ljava/lang/String;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_MAP_2:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/ayma/commonerp/config/Constants;->RECEIPT_TYPE_ADD_ON_ROAD_LIST:Ljava/util/List;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getOpStoreType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreNameHint:Landroid/widget/TextView;

    const-string v1, "|\u4f9b\u2000\u5e94\u2000\u5546\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getSupplierName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 279
    :cond_1
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 282
    :cond_2
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreNameHint:Landroid/widget/TextView;

    const-string v1, "|\u4ed3\u5e93\u540d\u79f0\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvStoreName:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_1
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getPostMark()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u63d0\u4ea4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v5, 0x7f0c001a

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    invoke-virtual {v13}, Lcom/ayma/commonerp/bean/QueryReceiptBean;->getOpStoreType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "SO0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 292
    :cond_3
    iget-object v15, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v10, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v5, v14

    move-object v11, v10

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;)V

    invoke-virtual {v15, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 318
    :cond_4
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->ivStatue:Landroid/widget/ImageView;

    const v2, 0x7f0c0008

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 322
    :goto_2
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->tvType:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v0, v12, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v13}, Lcom/ayma/commonerp/ui/activity/queryreceipt/-$$Lambda$QueryReceiptActivity$ReceiptListAdapter$bPt6bbof8lu56GZAJ6rN0FMgLps;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Lcom/ayma/commonerp/bean/QueryReceiptBean;)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;
    .locals 3

    .line 242
    new-instance p2, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0088

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/queryreceipt/QueryReceiptActivity$ReceiptListAdapter;Landroid/view/View;)V

    return-object p2
.end method
