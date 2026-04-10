.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;Lcom/ayma/commonerp/bean/ReceiptSelectBean;Ljava/util/List;Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$list:Ljava/util/List;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1089
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$bean:Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->setSelected(Z)V

    .line 1091
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ayma/commonerp/bean/ReceiptSelectBean;

    .line 1092
    invoke-virtual {v3}, Lcom/ayma/commonerp/bean/ReceiptSelectBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v2, p1, :cond_2

    .line 1097
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setSelectStatue(I)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 1099
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setSelectStatue(I)V

    goto :goto_1

    .line 1101
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->setSelectStatue(I)V

    .line 1103
    :goto_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->notifyDataSetChanged()V

    .line 1104
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$2;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->calculateAmount()V

    return-void
.end method
