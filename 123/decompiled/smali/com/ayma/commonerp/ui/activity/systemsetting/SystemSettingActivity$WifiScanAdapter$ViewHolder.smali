.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SystemSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivLock:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080656
    .end annotation
.end field

.field ivPhoto:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080655
    .end annotation
.end field

.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field scanWifi:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08077f
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;Landroid/view/View;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->this$1:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;

    .line 555
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 556
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
