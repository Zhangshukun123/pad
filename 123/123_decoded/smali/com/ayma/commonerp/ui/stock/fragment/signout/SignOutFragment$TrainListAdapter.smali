.class Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SignOutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrainListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    check-cast p1, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;
    .locals 3

    .line 60
    new-instance p2, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/stock/fragment/signout/SignOutFragment$TrainListAdapter;Landroid/view/View;)V

    return-object p2
.end method
