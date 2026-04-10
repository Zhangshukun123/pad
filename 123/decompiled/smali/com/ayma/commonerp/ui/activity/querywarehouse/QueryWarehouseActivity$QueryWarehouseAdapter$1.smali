.class Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;
.super Ljava/lang/Object;
.source "QueryWarehouseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/WearhouseDataBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;Lcom/ayma/commonerp/bean/WearhouseDataBean;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/WearhouseDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 308
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity$QueryWarehouseAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/WearhouseDataBean;

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/querywarehouse/QueryWarehouseActivity;->showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V

    return-void
.end method
