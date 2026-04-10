.class public Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

.field private view7f08004c:Landroid/view/View;

.field private view7f08004d:Landroid/view/View;

.field private view7f08004e:Landroid/view/View;

.field private view7f08004f:Landroid/view/View;

.field private view7f080050:Landroid/view/View;

.field private view7f080051:Landroid/view/View;

.field private view7f080052:Landroid/view/View;

.field private view7f080053:Landroid/view/View;

.field private view7f080054:Landroid/view/View;

.field private view7f0800e5:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;Landroid/view/View;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    const v0, 0x7f08004c

    const-string v1, "field \'adBtnAllCommonData\' and method \'onBtnAllCommonClick\'"

    .line 48
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'adBtnAllCommonData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnAllCommonData:Landroid/widget/Button;

    .line 50
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004c:Landroid/view/View;

    .line 51
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080053

    const-string v1, "field \'adBtnUserData\' and method \'onBtnDownloadUserDataClick\'"

    .line 57
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 58
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'adBtnUserData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnUserData:Landroid/widget/Button;

    .line 59
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080053:Landroid/view/View;

    .line 60
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080054

    const-string v1, "field \'adWareData\' and method \'onBtnWareClick\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'adWareData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adWareData:Landroid/widget/Button;

    .line 68
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080054:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004e

    const-string v1, "field \'adBtnCarNumberData\' and method \'onBtnTranClick\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'adBtnCarNumberData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnCarNumberData:Landroid/widget/Button;

    .line 77
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004e:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004f

    const-string v1, "field \'adBtnCrossRoadData\' and method \'onBtnCrossRoadClick\'"

    .line 84
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 85
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'adBtnCrossRoadData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnCrossRoadData:Landroid/widget/Button;

    .line 86
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004f:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080050

    const-string v1, "field \'btnPermission\' and method \'onBtnPermissionClick\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 94
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnPermission\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->btnPermission:Landroid/widget/Button;

    .line 95
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080050:Landroid/view/View;

    .line 96
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e5

    const-string v1, "method \'onBtnBackClick\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 104
    new-instance v1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080051

    const-string v1, "method \'onBtnDownloadTeamDataClick\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080051:Landroid/view/View;

    .line 112
    new-instance v1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$8;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08004d

    const-string v1, "method \'onBtnBaseDataClick\'"

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004d:Landroid/view/View;

    .line 120
    new-instance v1, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$9;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080052

    const-string v1, "method \'onBtnUpdateSignStatueClick\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 127
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080052:Landroid/view/View;

    .line 128
    new-instance v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;

    .line 143
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnAllCommonData:Landroid/widget/Button;

    .line 144
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnUserData:Landroid/widget/Button;

    .line 145
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adWareData:Landroid/widget/Button;

    .line 146
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnCarNumberData:Landroid/widget/Button;

    .line 147
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->adBtnCrossRoadData:Landroid/widget/Button;

    .line 148
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity;->btnPermission:Landroid/widget/Button;

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004c:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080053:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080053:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080054:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080054:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004e:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004f:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080050:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080050:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f0800e5:Landroid/view/View;

    .line 164
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080051:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080051:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f08004d:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080052:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/download/DownloadActivity_ViewBinding;->view7f080052:Landroid/view/View;

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
