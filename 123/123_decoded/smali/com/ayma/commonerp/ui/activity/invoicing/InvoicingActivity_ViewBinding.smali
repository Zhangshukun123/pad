.class public Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "InvoicingActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

.field private view7f080076:Landroid/view/View;

.field private view7f080081:Landroid/view/View;

.field private view7f080082:Landroid/view/View;

.field private view7f080086:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e6

    const-string v2, "field \'tvRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvRight:Landroid/widget/TextView;

    .line 44
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080079

    const-string v2, "field \'rbNewest\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rbNewest:Landroid/widget/RadioButton;

    .line 45
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f080078

    const-string v2, "field \'rbEarly\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rbEarly:Landroid/widget/RadioButton;

    .line 46
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f08007a

    const-string v2, "field \'rgSortDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rgSortDate:Landroid/widget/RadioGroup;

    .line 47
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f08007b

    const-string v2, "field \'rlvData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080083

    const-string v2, "field \'tvNoData\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvNoData:Landroid/widget/TextView;

    .line 49
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08007c

    const-string v2, "field \'spOrderType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spOrderType:Landroid/widget/Spinner;

    .line 50
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f08007d

    const-string v2, "field \'spPayType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spPayType:Landroid/widget/Spinner;

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080077

    const-string v2, "field \'llFilterContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f080086

    const-string v1, "field \'tvStartTime\' and method \'onTvStartTimeClick\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvStartTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvStartTime:Landroid/widget/TextView;

    .line 54
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080086:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080081

    const-string v1, "field \'tvEndTime\' and method \'onTvEndTimeClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvEndTime\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvEndTime:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080081:Landroid/view/View;

    .line 64
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080076

    const-string v1, "field \'ivScan\' and method \'onIvScanClick\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivScan\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->ivScan:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080076:Landroid/view/View;

    .line 73
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080082

    const-string v1, "field \'tvInvoicing\' and method \'onTvInvoicingClick\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvInvoicing\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvInvoicing:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080082:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-class v0, Lcom/ayma/base/widget/ClearEditText;

    const v1, 0x7f080075

    const-string v2, "field \'etOrderCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ayma/base/widget/ClearEditText;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;

    .line 98
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvRight:Landroid/widget/TextView;

    .line 99
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rbNewest:Landroid/widget/RadioButton;

    .line 100
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rbEarly:Landroid/widget/RadioButton;

    .line 101
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rgSortDate:Landroid/widget/RadioGroup;

    .line 102
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->rlvData:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvNoData:Landroid/widget/TextView;

    .line 104
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spOrderType:Landroid/widget/Spinner;

    .line 105
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->spPayType:Landroid/widget/Spinner;

    .line 106
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->llFilterContainer:Landroid/widget/LinearLayout;

    .line 107
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvStartTime:Landroid/widget/TextView;

    .line 108
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvEndTime:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->ivScan:Landroid/widget/ImageView;

    .line 110
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->tvInvoicing:Landroid/widget/TextView;

    .line 111
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity;->etOrderCode:Lcom/ayma/base/widget/ClearEditText;

    .line 113
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080086:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080086:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080081:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080081:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080076:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080076:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080082:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/invoicing/InvoicingActivity_ViewBinding;->view7f080082:Landroid/view/View;

    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
