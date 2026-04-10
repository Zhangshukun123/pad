.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SCOpenShopFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->onTvFirstOutDayClick(Landroid/view/View;)V

    return-void
.end method
