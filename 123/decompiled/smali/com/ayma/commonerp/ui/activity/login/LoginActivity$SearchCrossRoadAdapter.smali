.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchCrossRoadAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ayma/commonerp/bean/CrossRoadDataBean;",
            ">;)V"
        }
    .end annotation

    .line 675
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 676
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 709
    invoke-virtual {p0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$LoginActivity$SearchCrossRoadAdapter(Lcom/ayma/commonerp/bean/CrossRoadDataBean;Landroid/view/View;)V
    .locals 0

    .line 697
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->selectCrossRoad(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    .line 698
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$400(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 672
    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;I)V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    .line 688
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 689
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    .line 693
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->tvTeamName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getEmployeeCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->tvRoadDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getRoadDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 672
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;
    .locals 3

    .line 682
    new-instance p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;Landroid/view/View;)V

    return-object p2
.end method
