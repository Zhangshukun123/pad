.class public Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SCOrderContainerFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    .line 22
    const-class v0, Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x7f0803e2

    const-string v2, "field \'vp\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->vp:Landroidx/viewpager2/widget/ViewPager2;

    .line 23
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0803d1

    const-string v2, "field \'tl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->tl:Lcom/google/android/material/tabs/TabLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment_ViewBinding;->target:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    .line 33
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->vp:Landroidx/viewpager2/widget/ViewPager2;

    .line 34
    iput-object v1, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->tl:Lcom/google/android/material/tabs/TabLayout;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
