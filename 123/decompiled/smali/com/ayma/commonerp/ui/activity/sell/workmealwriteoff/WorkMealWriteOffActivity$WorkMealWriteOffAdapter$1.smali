.class Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;
.super Ljava/lang/Object;
.source "WorkMealWriteOffActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

.field final synthetic val$holder:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->access$002(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;)Lcom/ayma/commonerp/bean/WorkMealWriteOffBean;

    .line 248
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->val$holder:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$ViewHolder;->getLayoutPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->access$102(Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;I)I

    .line 249
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity$WorkMealWriteOffAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/WorkMealWriteOffActivity;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/sell/workmealwriteoff/selectgoods/WorkMealSelectGoodsActivity;->show(Landroid/content/Context;)V

    return-void
.end method
