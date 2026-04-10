.class public final synthetic Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

.field public final synthetic f$1:Lcom/ayma/commonerp/bean/CrossRoadDataBean;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;Lcom/ayma/commonerp/bean/CrossRoadDataBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;->f$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;->f$1:Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;->f$0:Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/login/-$$Lambda$LoginActivity$SearchCrossRoadAdapter$XGtXJJE7dEKEk-a4BYuC3qT4EYU;->f$1:Lcom/ayma/commonerp/bean/CrossRoadDataBean;

    invoke-virtual {v0, v1, p1}, Lcom/ayma/commonerp/ui/activity/login/LoginActivity$SearchCrossRoadAdapter;->lambda$onBindViewHolder$0$LoginActivity$SearchCrossRoadAdapter(Lcom/ayma/commonerp/bean/CrossRoadDataBean;Landroid/view/View;)V

    return-void
.end method
