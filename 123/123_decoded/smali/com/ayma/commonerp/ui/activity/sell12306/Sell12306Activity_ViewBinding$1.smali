.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "Sell12306Activity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->onBtnRightClick(Landroid/view/View;)V

    return-void
.end method
