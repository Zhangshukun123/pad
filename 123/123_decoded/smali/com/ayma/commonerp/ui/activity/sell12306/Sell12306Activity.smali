.class public Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "Sell12306Activity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sell12306DetailAdapter;,
        Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;",
        "Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Contact$Sell12306View;"
    }
.end annotation


# static fields
.field public static final OPTION_SELECT_ALL:I = 0x0

.field public static final OPTION_SELECT_REVERSE:I = 0x1


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

.field etCustomerTrain:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801e4
    .end annotation
.end field

.field rgSelect:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801e7
    .end annotation
.end field

.field rlv:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801e8
    .end annotation
.end field

.field spStatue:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801e9
    .end annotation
.end field

.field tvDataCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f2
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f3
    .end annotation
.end field

.field tvQuery:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0801f4
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTvQueryClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public clearSelect()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rgSelect:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0039

    return v0
.end method

.method public init()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    const-string v1, "\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    sget-object v2, Lcom/ayma/commonerp/config/Constants;->RECEIPT_STATUE:Ljava/util/List;

    const v3, 0x1090009

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 94
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rgSelect:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->initPresenter()Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;
    .locals 2

    .line 86
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public synthetic lambda$onTvQueryClick$1$Sell12306Activity(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->etCustomerTrain:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\u5168\u90e8"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->query12306Data(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notifyListDataChange(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/sale12306/OrderHead;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    .line 178
    new-instance v0, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 179
    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 180
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/ayma/commonerp/widget/SpacesItemDecoration;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->context:Landroid/content/Context;

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {v5, v6}, Lcom/ayma/base/util/CommonUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/ayma/commonerp/widget/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 181
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->notifyDataSetChanged()V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getItemCount()I

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rlv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->rgSelect:Landroid/widget/RadioGroup;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->showDataCount()V

    return-void
.end method

.method public onBtnBackClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e5
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->finishActivity()V

    return-void
.end method

.method public onBtnRightClick(Landroid/view/View;)V
    .locals 8
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getSelectedOrderCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p1, v1, [Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    .line 159
    invoke-virtual {v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getSelectedOrderCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "\u5373\u5c06\u63d0\u4ea4\u5df2\u9009\u62e9\u7684%s\u7b14\u8ba2\u5355\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$2;

    invoke-direct {v5, p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$2;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    new-instance v7, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$3;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$3;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    const-string v2, ""

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u7ee7\u7eed"

    move-object v1, p0

    .line 158
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 154
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const-string p1, "\u5f53\u524d\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 155
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onTvQueryClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0801f4
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 129
    sget-object v4, Lcom/ayma/commonerp/ui/activity/sell12306/-$$Lambda$Sell12306Activity$_4cCyJxS-zCRNmPeRD8XA4mRHQM;->INSTANCE:Lcom/ayma/commonerp/ui/activity/sell12306/-$$Lambda$Sell12306Activity$_4cCyJxS-zCRNmPeRD8XA4mRHQM;

    new-instance v6, Lcom/ayma/commonerp/ui/activity/sell12306/-$$Lambda$Sell12306Activity$ICuTkFIOTGQw_awFy4VTJx9JQVM;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/sell12306/-$$Lambda$Sell12306Activity$ICuTkFIOTGQw_awFy4VTJx9JQVM;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u672c\u6b21\u67e5\u8be2\u64cd\u4f5c\u5c06\u4f1a\u6e05\u7a7a\u5f53\u524d\u5217\u8868\uff0c\u662f\u5426\u8981\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->etCustomerTrain:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "\u5168\u90e8"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->spStatue:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->query12306Data(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCommitButtonEnable(Z)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showDataCount()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvDataCount:Landroid/widget/TextView;

    const-string v1, "\u51710\u7b14\u8ba2\u5355"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvDataCount:Landroid/widget/TextView;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getItemCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getSelectedOrderCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->adapter:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;

    invoke-virtual {v3}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$Sale12306Adapter;->getSelectedOrderGoodsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "\u5171%s\u7b14\u8ba2\u5355\uff1b\u5df2\u9009%s\u7b14\u8ba2\u5355\uff0c\u5171%s\u4ef6\u5546\u54c1"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
