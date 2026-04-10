.class Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;
.super Ljava/lang/Object;
.source "TeamHandoverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->confirmCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

.field final synthetic val$isSelectSome:Z

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$receiveTrainGoDay:Ljava/lang/String;

.field final synthetic val$receiveTrainNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$receiveTrainNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$receiveTrainGoDay:Ljava/lang/String;

    iput-object p4, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$list:Ljava/util/List;

    iput-boolean p5, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$isSelectSome:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 367
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$receiveTrainNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$receiveTrainGoDay:Ljava/lang/String;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$list:Ljava/util/List;

    iget-boolean v2, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity$5;->val$isSelectSome:Z

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverPresenter;->commitData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
