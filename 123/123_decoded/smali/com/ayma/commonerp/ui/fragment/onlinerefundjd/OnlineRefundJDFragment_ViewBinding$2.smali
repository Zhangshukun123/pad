.class Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "OnlineRefundJDFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;->val$target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment_ViewBinding$2;->val$target:Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;->onTvEndTimeClick(Landroid/view/View;)V

    return-void
.end method
