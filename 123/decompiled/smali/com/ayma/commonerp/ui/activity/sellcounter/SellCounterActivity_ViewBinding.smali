.class public Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SellCounterActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

.field private view7f0800e5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;)V
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;Landroid/view/View;)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e6

    const-string v2, "field \'btnRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800e8

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnBackClick\'"

    .line 32
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 34
    new-instance v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 47
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->btnRight:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity;->tvTitle:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
