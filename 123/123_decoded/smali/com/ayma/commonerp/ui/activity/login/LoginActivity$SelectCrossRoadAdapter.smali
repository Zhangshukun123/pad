.class Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectCrossRoadAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;",
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

    .line 620
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 621
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$LoginActivity$SelectCrossRoadAdapter(Lcom/ayma/commonerp/bean/CrossRoadDataBean;Landroid/view/View;)V
    .locals 0

    .line 642
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginPresenter;->selectCrossRoad(Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    .line 643
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$300(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$300(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 644
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->access$300(Lcom/ayma/commonerp/ui/activity/login/LoginActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 617
    check-cast p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;I)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    .line 633
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    .line 634
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070076

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f070077

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBackgroundResource(I)V

    .line 638
    :goto_0
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTrainNo:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTrainName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvTeamName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getTeamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->tvRoadDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/CrossRoadDataBean;->getRoadDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;->root:Landroidx/appcompat/widget/LinearLayoutCompat;

    new-instance p2, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SelectCrossRoadAdapter$89yBlPJNw3Bf3PQOW8-IZMojm4k;

    invoke-direct {p2, p0, v0}, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SelectCrossRoadAdapter$89yBlPJNw3Bf3PQOW8-IZMojm4k;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;
    .locals 3

    .line 627
    new-instance p2, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0080

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SelectCrossRoadAdapter;Landroid/view/View;)V

    return-object p2
.end method
