.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$5;
.super Ljava/lang/Object;
.source "OnlinePayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->lambda$showJDPayQrCode$0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 591
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$300(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
