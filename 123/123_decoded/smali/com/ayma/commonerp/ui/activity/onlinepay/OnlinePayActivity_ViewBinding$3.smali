.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;
.super Ljava/lang/Object;
.source "OnlinePayActivity_ViewBinding.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$3;->val$target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->onLongIvScanClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
