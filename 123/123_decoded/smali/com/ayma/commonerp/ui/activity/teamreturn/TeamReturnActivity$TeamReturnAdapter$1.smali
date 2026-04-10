.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;I)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1049
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$1$TeamReturnActivity$TeamReturnAdapter$1(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1051
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-static {p2, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->access$1200(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;I)V

    .line 1052
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnPresenter;->calculateAmount()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1047
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u5426\u8981\u5220\u9664  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->val$typesBean:Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;

    .line 1048
    invoke-virtual {v1}, Lcom/ayma/commonerp/bean/SmallGoodsTypesBean;->getGoodsTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \u5206\u7c7b\u4ee5\u53ca\u5176\u5546\u54c1\uff1f"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$1$ItXtx0utMR7CJjgrtc3_YVQhU6Y;->INSTANCE:Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$1$ItXtx0utMR7CJjgrtc3_YVQhU6Y;

    iget p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;->val$groupPosition:I

    new-instance v6, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$1$fBfnB__jjyeiLi7RZ52IQjfoIAs;

    invoke-direct {v6, p0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$TeamReturnAdapter$1$fBfnB__jjyeiLi7RZ52IQjfoIAs;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$1;I)V

    const-string v1, "\u6ce8\u610f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u5220\u9664"

    .line 1047
    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
