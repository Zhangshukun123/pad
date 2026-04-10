.class Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SCOrderContainerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentPageAdapter"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroidx/lifecycle/Lifecycle;",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/ui/fragment/sellcounter/order/SCOrderFragment;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment;

    .line 112
    invoke-direct {p0, p2, p3}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Landroidx/lifecycle/Lifecycle;)V

    .line 113
    iput-object p4, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/order/container/SCOrderContainerFragment$FragmentPageAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
