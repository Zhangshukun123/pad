.class Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;
.super Ljava/lang/Object;
.source "OnlineRefundActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$100(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    invoke-direct {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$102(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$100(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundjd/OnlineRefundJDFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$000(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    move-result-object p1

    if-nez p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    new-instance v0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-direct {v0}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;-><init>()V

    invoke-static {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$002(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    .line 73
    :cond_3
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->access$000(Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;)Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundActivity;->switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
