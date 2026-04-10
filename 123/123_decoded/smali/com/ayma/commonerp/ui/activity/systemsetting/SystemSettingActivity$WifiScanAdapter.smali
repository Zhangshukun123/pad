.class public Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SystemSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiScanAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 481
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->context:Landroid/content/Context;

    .line 483
    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->list:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWifiLevel(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 525
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v0, -0x32

    if-gtz p1, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    const/16 v1, -0x46

    if-ge p1, v0, :cond_1

    if-lt p1, v1, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    const/16 v0, -0x50

    if-ge p1, v1, :cond_2

    if-lt p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    if-ge p1, v0, :cond_3

    const/16 v0, -0x64

    if-lt p1, v0, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 477
    check-cast p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;I)V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/ScanResult;

    .line 496
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->scanWifi:Landroid/widget/TextView;

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->mWifiAdmin:Lcom/ayma/commonerp/util/WifiAdmin;

    iget-object v1, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/util/WifiAdmin;->getCipherType(Ljava/lang/String;)Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    move-result-object v0

    sget-object v1, Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;->WIFI_CIPHER_NO_PASS:Lcom/ayma/commonerp/util/WifiAdmin$WifiCapability;

    if-ne v0, v1, :cond_0

    .line 498
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->ivLock:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 500
    :cond_0
    iget-object v0, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->ivLock:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0c002e

    .line 503
    invoke-virtual {p0, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->getWifiLevel(Landroid/net/wifi/ScanResult;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x7f0c0031

    goto :goto_1

    :cond_2
    const v0, 0x7f0c0030

    goto :goto_1

    :cond_3
    const v0, 0x7f0c002f

    .line 515
    :goto_1
    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->ivPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$1;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 477
    invoke-virtual {p0, p1, p2}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;
    .locals 3

    .line 490
    new-instance p2, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00bb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter$ViewHolder;-><init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity$WifiScanAdapter;Landroid/view/View;)V

    return-object p2
.end method
