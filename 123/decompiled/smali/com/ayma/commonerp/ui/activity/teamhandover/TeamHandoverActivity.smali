.class public Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;
.super Lcom/ayma/commonerp/base/BaseActivity;
.source "TeamHandoverActivity.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;,
        Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ayma/commonerp/base/BaseActivity<",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;",
        ">;",
        "Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverContact$ITeamHandoverView;"
    }
.end annotation


# instance fields
.field private adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

.field btnCommit:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080261
    .end annotation
.end field

.field btnQuery:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080262
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080264
    .end annotation
.end field

.field private isShowItemSelectOption:Z

.field private itemOptionPopup:Landroid/widget/PopupWindow;

.field rbSelectAll:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080265
    .end annotation
.end field

.field rbSelectReverse:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080266
    .end annotation
.end field

.field rgSelectOptions:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080267
    .end annotation
.end field

.field rlvData:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080268
    .end annotation
.end field

.field tv3:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08071b
    .end annotation
.end field

.field tv4:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08071c
    .end annotation
.end field

.field tvAllCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080269
    .end annotation
.end field

.field tvAllMoney:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08026a
    .end annotation
.end field

.field tvNoData:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080270
    .end annotation
.end field

.field tvReceiveGoDate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080271
    .end annotation
.end field

.field tvRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0800e6
    .end annotation
.end field

.field tvSelectedCountAndAmount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080272
    .end annotation
.end field

.field tvTotalCount:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080273
    .end annotation
.end field

.field tvTotalPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080274
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/ayma/commonerp/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Landroid/widget/PopupWindow;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->isShowItemSelectOption:Z

    return p0
.end method

.method static synthetic lambda$showEditCountDialog$4(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 504
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showSelectDateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 294
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public confirmCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptJsonBean;",
            ">;Z)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b005c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080303

    .line 350
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "\u5373\u5c06\u5c06\u4ee5\u4e0b\u5546\u54c1\u4ea4\u63a5\u81f3\n\u8f66\u6b21:%s  \u51fa\u4e58\u65e5\u671f\uff1a%s\n\u8bf7\u786e\u8ba4"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f080302

    .line 351
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 352
    new-instance v3, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;

    invoke-direct {v3, p0, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ConfirmAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Ljava/util/List;)V

    .line 353
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v7, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 354
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$6;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$6;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    const-string v2, "\u53d6\u6d88"

    .line 357
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    const-string p1, "\u786e\u5b9a"

    .line 363
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 370
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 371
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 372
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 373
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_1
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0b0040

    return v0
.end method

.method public init()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    const-string v1, "\u9009\u62e9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$2;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$2;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Lcom/ayma/base/widget/ClearEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 241
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectAll:Landroid/widget/RadioButton;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$3;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$3;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rbSelectReverse:Landroid/widget/RadioButton;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$4;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$4;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void
.end method

.method public bridge synthetic initPresenter()Lcom/ayma/base/mvp/MvpBasePresenter;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->initPresenter()Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    move-result-object v0

    return-object v0
.end method

.method public initPresenter()Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;
    .locals 2

    .line 387
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initRlv(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/ReceiptSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 397
    new-instance v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    .line 398
    new-instance p1, Lcom/ayma/base/widget/XLinearLayoutManager;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/ayma/base/widget/XLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 399
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 400
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 401
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public synthetic lambda$showEditCountDialog$3$TeamHandoverActivity(Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;ILcom/ayma/commonerp/bean/ReceiptSelectBean;Landroid/view/View;)V
    .locals 4

    .line 483
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p5

    .line 484
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "\u8bf7\u8f93\u5165\u5546\u54c1\u6570\u91cf"

    .line 485
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 489
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p5, v0, v2

    if-gez p5, :cond_1

    const-string p2, "\u5546\u54c1\u6570\u91cf\u4e0d\u80fd\u4e3a\u8d1f\u6570"

    .line 491
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 495
    :cond_1
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->hideSoftKeyboard()V

    .line 497
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    invoke-virtual {p1, p3, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->updateGoodsCount(ID)V

    .line 498
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1, p4, p3}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->updateGoodsCount(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    .line 499
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p4, p3, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->selectItem(Lcom/ayma/commonerp/bean/ReceiptSelectBean;IZ)V

    .line 500
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p3, "\u9009\u62e9"

    invoke-virtual {p3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 501
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->selectOption(Z)V

    :cond_2
    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$0$TeamHandoverActivity(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 279
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 280
    new-instance p2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "yyyyMMdd"

    invoke-direct {p2, p4, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 281
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic lambda$showSelectDateDialog$1$TeamHandoverActivity(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 291
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public movePosition(IZ)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->movePosition(IZ)V

    return-void
.end method

.method public notifyItemChange(I)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->notifyItemChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyListDataChange()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$11;

    invoke-direct {v1, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$11;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    .line 578
    :cond_0
    invoke-super {p0}, Lcom/ayma/commonerp/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onBtnCommitClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080261
        }
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bf7\u8f93\u5165\u8f66\u6b21"

    .line 158
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u9009\u62e9\u63a5\u8d27\u51fa\u4e58\u65e5\u671f"

    .line 163
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showSelectDateDialog(Landroid/widget/TextView;)V

    return-void

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u5f53\u524d\u6ca1\u6709\u53ef\u63d0\u4ea4\u7684\u6570\u636e"

    .line 168
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {v2, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->prepareCommitData(Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->confirmCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public onBtnQueryClick(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080262
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->hideSoftKeyboard()V

    .line 134
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v4, 0x0

    .line 135
    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$1;

    invoke-direct {v6, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$1;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u6b64\u64cd\u4f5c\u4f1a\u6e05\u7a7a\u5f53\u524d\u5217\u8868\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->etReceiveTranNo:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {v0}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->queryTrainStock(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBtnRightClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0800e6
        }
    .end annotation

    .line 183
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->adapter:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$ListAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "\u5f53\u524d\u65e0\u4efb\u4f55\u6570\u636e\u53ef\u9009\u62e9"

    .line 184
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u9009\u62e9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->selectOption(Z)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 191
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->selectOption(Z)V

    .line 192
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->cancelSelect()V

    goto :goto_0

    :cond_2
    const-string p1, "\u672a\u77e5\u64cd\u4f5c"

    .line 194
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEtDateClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f080271
        }
    .end annotation

    .line 178
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvReceiveGoDate:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->showSelectDateDialog(Landroid/widget/TextView;)V

    return-void
.end method

.method public onTvGoodsCodeClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08026b
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsNameClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08026c
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsPriceClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08026e
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public onTvGoodsQtyClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f08026d
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast v0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->sortList(IZLandroid/view/View;)V

    return-void
.end method

.method public resetSortIcon(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f08026b

    .line 558
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08026c

    .line 559
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08026d

    .line 560
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08026e

    .line 561
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    .line 565
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 567
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getSortIcon(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v1, v1, v4, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    xor-int/2addr v0, v2

    .line 568
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public selectOption(Z)V
    .locals 4

    .line 318
    iput-boolean p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->isShowItemSelectOption:Z

    .line 319
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvRight:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v1, "\u53d6\u6d88"

    goto :goto_0

    :cond_0
    const-string v1, "\u9009\u62e9"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->rgSelectOptions:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv3:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tv4:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvSelectedCountAndAmount:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->notifyListDataChange()V

    return-void
.end method

.method protected setTitle()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showCountAndTotalPrice(DD)V
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalCount:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvTotalPrice:Landroid/widget/TextView;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showEditCountDialog(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 12

    .line 468
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08072b

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08035c

    .line 470
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ayma/base/widget/ClearEditText;

    const v4, 0x7f0802a9

    .line 472
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/widget/Button;

    const v4, 0x7f0802aa

    .line 473
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/Button;

    .line 474
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getAddCount()D

    move-result-wide v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 476
    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->getWareData()Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v7, "%s-\u5f53\u524d\u6570\u91cf\uff1a%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    invoke-static {v4, v5}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ayma/base/widget/ClearEditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ayma/base/widget/ClearEditText;->setSelection(I)V

    .line 479
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;

    move-object v4, v1

    move-object v5, p0

    move-object v6, v2

    move-object v7, v0

    move v8, p2

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$_vyyRUSJ-7MauxFxuP2hVOy4GOQ;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/base/widget/ClearEditText;Landroid/app/AlertDialog;ILcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    new-instance p1, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$UoeKptAZVDHfGtYwwLKCNRkaDNM;

    invoke-direct {p1, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$UoeKptAZVDHfGtYwwLKCNRkaDNM;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v10, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 506
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 507
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    .line 508
    invoke-virtual {v2}, Lcom/ayma/base/widget/ClearEditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public showItemOptionPopup(Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 414
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    const v1, 0x7f0807a5

    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$7;

    invoke-direct {v2, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$7;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080731

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$8;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080732

    .line 440
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$9;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$9;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f080733

    .line 448
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$10;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Lcom/ayma/commonerp/bean/ReceiptSelectBean;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 456
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const p2, 0x7f1102ea

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const p1, 0x1020002

    .line 457
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->itemOptionPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x51

    invoke-virtual {v0, p1, v1, p2, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showSelectDateDialog(Landroid/widget/TextView;)V
    .locals 10

    .line 265
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0060

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080304

    .line 267
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/DatePicker;

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, 0x1

    .line 269
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    .line 270
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    .line 271
    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 272
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "yyyyMMdd"

    invoke-direct {v7, v9, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 274
    invoke-virtual {v8, v5, v6, v3}, Ljava/util/Calendar;->set(III)V

    .line 275
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->date:Ljava/lang/String;

    .line 277
    new-instance v7, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$9xuPquVxcgN1KHRsQN1j_5Ie1Gg;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$9xuPquVxcgN1KHRsQN1j_5Ie1Gg;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;)V

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 285
    new-instance v1, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$xXvSX3xY90-fAR4yc9zNv2htA9o;-><init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Landroid/widget/TextView;)V

    const-string p1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v1, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$zNVNIs9Q3iWAqDJ12xUwXukzyM8;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$zNVNIs9Q3iWAqDJ12xUwXukzyM8;

    const-string v2, "\u53d6\u6d88"

    .line 294
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 298
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 300
    invoke-virtual {p0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->resetDialogWidth(Landroid/app/AlertDialog;)V

    :cond_0
    return-void
.end method

.method public showSelectedCountAndAmount(DD)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->tvSelectedCountAndAmount:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/ayma/commonerp/util/DoubleToString;->doubleParseString(D)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "\u5df2\u9009\u6570\u91cf\uff1a%s\uff0c\u603b\u91d1\u989d\uff1a%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
