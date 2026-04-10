.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SCOrderContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->tl:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    iget-object v1, v1, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->tl:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method
