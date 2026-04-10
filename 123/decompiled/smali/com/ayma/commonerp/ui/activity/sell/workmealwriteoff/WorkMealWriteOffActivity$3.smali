.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;
.super Ljava/lang/Object;
.source "WorkMealWriteOffActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->confirmWriteOff(Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

.field final synthetic val$dtosBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;I)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$dtosBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    iput p4, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 189
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    move-object v0, p1

    check-cast v0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;

    sget-object v1, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$dtosBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsId()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$dtosBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsCode()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$dtosBean:Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;

    invoke-virtual {p1}, Lcom/ayma/commonerp/bean/GoodsInfoDtosBean;->getGoodsName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$3;->val$position:I

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffPresenter;->writeOffWorkMeal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
