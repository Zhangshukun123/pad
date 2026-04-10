.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SCOpenShopFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

.field private view7f08040a:Landroid/view/View;

.field private view7f08040b:Landroid/view/View;

.field private view7f08040c:Landroid/view/View;

.field private view7f08040f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;Landroid/view/View;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    const v0, 0x7f08040c

    const-string v1, "field \'tvFirstOutDay\' and method \'onTvFirstOutDayClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 33
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFirstOutDay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->tvFirstOutDay:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040c:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080407

    const-string v2, "field \'etFirstOutTrain\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    .line 42
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080409

    const-string v2, "field \'etTrainId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    .line 43
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f080408

    const-string v2, "field \'etShopCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    const v0, 0x7f08040f

    const-string v1, "field \'tvOpenShop\' and method \'onTvOpenShopClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvOpenShop\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->tvOpenShop:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040f:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08040b

    const-string v1, "method \'onIvScanTrainIdClick\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040b:Landroid/view/View;

    .line 55
    new-instance v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08040a

    const-string v1, "method \'onIvScanShopCodeClick\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040a:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    .line 78
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->tvFirstOutDay:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    .line 80
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    .line 81
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    .line 82
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->tvOpenShop:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040c:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040f:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040b:Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;->view7f08040a:Landroid/view/View;

    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
