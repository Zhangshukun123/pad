.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "QueryWarehouseActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->onBtnQueryClick(Landroid/view/View;)V

    return-void
.end method
