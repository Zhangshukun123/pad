.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TeamReturnActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;->this$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;->val$target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity_ViewBinding$8;->val$target:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->onTvGoodsCodeClick(Landroid/view/View;)V

    return-void
.end method
