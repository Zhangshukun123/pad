.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnlinePayActivity_ViewBinding.java"


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

    .line 61
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;->val$target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity_ViewBinding$2;->val$target:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->onIvScanClick(Landroid/view/View;)V

    return-void
.end method
