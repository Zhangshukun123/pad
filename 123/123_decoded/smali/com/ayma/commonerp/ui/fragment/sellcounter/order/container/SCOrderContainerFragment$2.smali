.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$2;
.super Ljava/lang/Object;
.source "SCOrderContainerFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


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

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;->vp:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
