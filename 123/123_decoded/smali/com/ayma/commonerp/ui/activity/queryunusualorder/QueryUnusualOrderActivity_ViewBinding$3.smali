.class Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "QueryUnusualOrderActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;->this$0:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/queryunusualorder/QueryUnusualOrderActivity;->onAppTitleBtnLeftClicked()V

    return-void
.end method
