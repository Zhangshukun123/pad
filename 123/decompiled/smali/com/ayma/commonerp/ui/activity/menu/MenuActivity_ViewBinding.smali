.class public Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;
.super Ljava/lang/Object;
.source "MenuActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

.field private view7f080097:Landroid/view/View;

.field private view7f080098:Landroid/view/View;

.field private view7f080099:Landroid/view/View;

.field private view7f08009a:Landroid/view/View;

.field private view7f08009b:Landroid/view/View;

.field private view7f08009c:Landroid/view/View;

.field private view7f08009d:Landroid/view/View;

.field private view7f08009e:Landroid/view/View;

.field private view7f08009f:Landroid/view/View;

.field private view7f0800a0:Landroid/view/View;

.field private view7f0800a1:Landroid/view/View;

.field private view7f0800a2:Landroid/view/View;

.field private view7f0800a3:Landroid/view/View;

.field private view7f0800a4:Landroid/view/View;

.field private view7f0800a5:Landroid/view/View;

.field private view7f0800a6:Landroid/view/View;

.field private view7f0800a7:Landroid/view/View;

.field private view7f0800a8:Landroid/view/View;

.field private view7f0800a9:Landroid/view/View;

.field private view7f0800aa:Landroid/view/View;

.field private view7f0800ab:Landroid/view/View;

.field private view7f0800ac:Landroid/view/View;

.field private view7f0800ad:Landroid/view/View;

.field private view7f0800af:Landroid/view/View;

.field private view7f0800b0:Landroid/view/View;

.field private view7f0800b1:Landroid/view/View;

.field private view7f0800b2:Landroid/view/View;

.field private view7f0800b3:Landroid/view/View;

.field private view7f0800b4:Landroid/view/View;

.field private view7f0800b5:Landroid/view/View;

.field private view7f0800b6:Landroid/view/View;

.field private view7f0800c4:Landroid/view/View;

.field private view7f0800c9:Landroid/view/View;

.field private view7f0800cb:Landroid/view/View;

.field private view7f0800e6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/view/View;)V
    .locals 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    .line 102
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f080099

    const-string v1, "field \'btnCommonSell\' and method \'onViewClicked\'"

    .line 103
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 104
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnCommonSell\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnCommonSell:Landroid/widget/Button;

    .line 105
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080099:Landroid/view/View;

    .line 106
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b5

    const-string v1, "field \'btnVipLargess\' and method \'onViewClicked\'"

    .line 112
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 113
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnVipLargess\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnVipLargess:Landroid/widget/Button;

    .line 114
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b5:Landroid/view/View;

    .line 115
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$2;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b0

    const-string v1, "field \'btnSellCounter\' and method \'onViewClicked\'"

    .line 121
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 122
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSellCounter\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSellCounter:Landroid/widget/Button;

    .line 123
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b0:Landroid/view/View;

    .line 124
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$3;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b6

    const-string v1, "field \'btnMealWriteOff\' and method \'onViewClicked\'"

    .line 130
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 131
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnMealWriteOff\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMealWriteOff:Landroid/widget/Button;

    .line 132
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b6:Landroid/view/View;

    .line 133
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$4;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080098

    const-string v1, "field \'btnComingUpload\' and method \'onViewClicked\'"

    .line 139
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 140
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnComingUpload\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnComingUpload:Landroid/widget/Button;

    .line 141
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080098:Landroid/view/View;

    .line 142
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$5;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800aa

    const-string v1, "field \'btnQueryWarehouse\' and method \'onViewClicked\'"

    .line 148
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 149
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQueryWarehouse\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryWarehouse:Landroid/widget/Button;

    .line 150
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800aa:Landroid/view/View;

    .line 151
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$6;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800af

    const-string v1, "field \'btnSell12306\' and method \'onViewClicked\'"

    .line 157
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 158
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'btnSell12306\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSell12306:Landroid/widget/TextView;

    .line 159
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800af:Landroid/view/View;

    .line 160
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$7;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a9

    const-string v1, "field \'btnQueryTable\' and method \'onViewClicked\'"

    .line 166
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 167
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQueryTable\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryTable:Landroid/widget/Button;

    .line 168
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a9:Landroid/view/View;

    .line 169
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$8;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a5

    const-string v1, "field \'btnQueryEtcAll\' and method \'onViewClicked\'"

    .line 175
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 176
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQueryEtcAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryEtcAll:Landroid/widget/Button;

    .line 177
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a5:Landroid/view/View;

    .line 178
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$9;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a8

    const-string v1, "field \'btnQuerySellGetmoney\' and method \'onViewClicked\'"

    .line 184
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 185
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQuerySellGetmoney\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuerySellGetmoney:Landroid/widget/Button;

    .line 186
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a8:Landroid/view/View;

    .line 187
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$10;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a0

    const-string v1, "field \'btnMakeCarAdd\' and method \'onViewClicked\'"

    .line 193
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 194
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnMakeCarAdd\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeCarAdd:Landroid/widget/Button;

    .line 195
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a0:Landroid/view/View;

    .line 196
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$11;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b1

    const-string v1, "field \'btnSellTable\' and method \'onViewClicked\'"

    .line 202
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 203
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnSellTable\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSellTable:Landroid/widget/Button;

    .line 204
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b1:Landroid/view/View;

    .line 205
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$12;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$12;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a1

    const-string v1, "field \'btnMakeQuitCar\' and method \'onViewClicked\'"

    .line 211
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 212
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnMakeQuitCar\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeQuitCar:Landroid/widget/Button;

    .line 213
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a1:Landroid/view/View;

    .line 214
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$13;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$13;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009f

    const-string v1, "field \'btnMakeAddYidi\' and method \'onViewClicked\'"

    .line 220
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 221
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnMakeAddYidi\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeAddYidi:Landroid/widget/Button;

    .line 222
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009f:Landroid/view/View;

    .line 223
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$14;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$14;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a7

    const-string v1, "field \'btnQuerySellDetail\' and method \'onViewClicked\'"

    .line 229
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 230
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQuerySellDetail\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuerySellDetail:Landroid/widget/Button;

    .line 231
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a7:Landroid/view/View;

    .line 232
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$15;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$15;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a2

    const-string v1, "field \'btnMakeQuitClass\' and method \'onViewClicked\'"

    .line 238
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 239
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnMakeQuitClass\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeQuitClass:Landroid/widget/Button;

    .line 240
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a2:Landroid/view/View;

    .line 241
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$16;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$16;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009a

    const-string v1, "field \'btnDownCommonData\' and method \'onViewClicked\'"

    .line 247
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 248
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDownCommonData\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnDownCommonData:Landroid/widget/Button;

    .line 249
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009a:Landroid/view/View;

    .line 250
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$17;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$17;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ad

    const-string v1, "field \'btnRevisePassword\' and method \'onViewClicked\'"

    .line 256
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 257
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnRevisePassword\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnRevisePassword:Landroid/widget/Button;

    .line 258
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ad:Landroid/view/View;

    .line 259
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$18;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$18;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009b

    const-string v1, "field \'btnDownTableDate\' and method \'onViewClicked\'"

    .line 265
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 266
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnDownTableDate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnDownTableDate:Landroid/widget/Button;

    .line 267
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009b:Landroid/view/View;

    .line 268
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$19;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$19;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ac

    const-string v1, "field \'btnQuitsystem\' and method \'onViewClicked\'"

    .line 274
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 275
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnQuitsystem\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuitsystem:Landroid/widget/Button;

    .line 276
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ac:Landroid/view/View;

    .line 277
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$20;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$20;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b2

    const-string v1, "field \'btnTakeOff\' and method \'onViewClicked\'"

    .line 283
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 284
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'btnTakeOff\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnTakeOff:Landroid/widget/Button;

    .line 285
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b2:Landroid/view/View;

    .line 286
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$21;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$21;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b4

    const-string v1, "field \'btnUpdateOrderPayStatue\' and method \'onViewClicked\'"

    .line 292
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 293
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0800b4

    const-string v3, "field \'btnUpdateOrderPayStatue\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnUpdateOrderPayStatue:Landroid/widget/Button;

    .line 294
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b4:Landroid/view/View;

    .line 295
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$22;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$22;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a3

    const-string v1, "field \'btnOnlineReturn\' and method \'onViewClicked\'"

    .line 301
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 302
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f0800a3

    const-string v3, "field \'btnOnlineReturn\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnOnlineReturn:Landroid/widget/Button;

    .line 303
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a3:Landroid/view/View;

    .line 304
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$23;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$23;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800cb

    const-string v1, "field \'tvTips\' and method \'onViewClicked\'"

    .line 310
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 311
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0800cb

    const-string v3, "field \'tvTips\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvTips:Landroid/widget/TextView;

    .line 312
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800cb:Landroid/view/View;

    .line 313
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$24;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$24;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0800ca

    const-string v2, "field \'tvSaleCounterTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvSaleCounterTip:Landroid/widget/TextView;

    .line 320
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0800ae

    const-string v2, "field \'btnSaleCounterRedDot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSaleCounterRedDot:Landroid/widget/Button;

    .line 321
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0800c3

    const-string v2, "field \'iv12306SaleRedDot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    const v0, 0x7f0800c9

    const-string v1, "field \'tv12306SaleTip\' and method \'onViewClicked\'"

    .line 322
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 323
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0800c9

    const-string v3, "field \'tv12306SaleTip\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    .line 324
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c9:Landroid/view/View;

    .line 325
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$25;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$25;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009c

    const-string v1, "field \'btnGoodsOption\' and method \'onViewClicked\'"

    .line 331
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 332
    const-class v1, Landroid/widget/Button;

    const v2, 0x7f08009c

    const-string v3, "field \'btnGoodsOption\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnGoodsOption:Landroid/widget/Button;

    .line 333
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009c:Landroid/view/View;

    .line 334
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$26;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$26;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800cc

    const-string v1, "field \'vOther\'"

    .line 340
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->vOther:Landroid/view/View;

    const v0, 0x7f0800c4

    const-string v1, "field \'tvFoldOther\' and method \'onViewClicked\'"

    .line 341
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 342
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0800c4

    const-string v3, "field \'tvFoldOther\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    .line 343
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c4:Landroid/view/View;

    .line 344
    new-instance v1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$27;

    invoke-direct {v1, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$27;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800ba

    const-string v2, "field \'clSell\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clSell:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 351
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800c2

    const-string v2, "field \'fbSale\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    .line 352
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800b7

    const-string v2, "field \'clOrder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clOrder:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 353
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800bd

    const-string v2, "field \'fbOrder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    .line 354
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0802df

    const-string v2, "field \'clQuerySell\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQuerySell:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 355
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800c0

    const-string v2, "field \'fbQuerySell\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    .line 356
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800b8

    const-string v2, "field \'clQueryOther\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQueryOther:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 357
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800bf

    const-string v2, "field \'fbQueryOther\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    .line 358
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0800b9

    const-string v2, "field \'clReceipt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clReceipt:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 359
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800c1

    const-string v2, "field \'fbReceipt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    .line 360
    const-class v0, Lcom/google/android/flexbox/FlexboxLayout;

    const v1, 0x7f0800be

    const-string v2, "field \'fbOther\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexboxLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOther:Lcom/google/android/flexbox/FlexboxLayout;

    const v0, 0x7f08009e

    const-string v1, "method \'onViewClicked\'"

    .line 361
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 362
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009e:Landroid/view/View;

    .line 363
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$28;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$28;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a4

    .line 369
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 370
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a4:Landroid/view/View;

    .line 371
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$29;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$29;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800a6

    .line 377
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 378
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a6:Landroid/view/View;

    .line 379
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$30;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$30;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800b3

    .line 385
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 386
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b3:Landroid/view/View;

    .line 387
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$31;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$31;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800e6

    .line 393
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 394
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 395
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$32;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$32;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080097

    .line 401
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 402
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080097:Landroid/view/View;

    .line 403
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$33;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$33;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ab

    .line 409
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 410
    iput-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ab:Landroid/view/View;

    .line 411
    new-instance v2, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$34;

    invoke-direct {v2, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$34;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009d

    .line 417
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 418
    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009d:Landroid/view/View;

    .line 419
    new-instance v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$35;

    invoke-direct {v0, p0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding$35;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 432
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    .line 434
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->root:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 435
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnCommonSell:Landroid/widget/Button;

    .line 436
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnVipLargess:Landroid/widget/Button;

    .line 437
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSellCounter:Landroid/widget/Button;

    .line 438
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMealWriteOff:Landroid/widget/Button;

    .line 439
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnComingUpload:Landroid/widget/Button;

    .line 440
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryWarehouse:Landroid/widget/Button;

    .line 441
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSell12306:Landroid/widget/TextView;

    .line 442
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryTable:Landroid/widget/Button;

    .line 443
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQueryEtcAll:Landroid/widget/Button;

    .line 444
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuerySellGetmoney:Landroid/widget/Button;

    .line 445
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeCarAdd:Landroid/widget/Button;

    .line 446
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSellTable:Landroid/widget/Button;

    .line 447
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeQuitCar:Landroid/widget/Button;

    .line 448
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeAddYidi:Landroid/widget/Button;

    .line 449
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuerySellDetail:Landroid/widget/Button;

    .line 450
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnMakeQuitClass:Landroid/widget/Button;

    .line 451
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnDownCommonData:Landroid/widget/Button;

    .line 452
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnRevisePassword:Landroid/widget/Button;

    .line 453
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnDownTableDate:Landroid/widget/Button;

    .line 454
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnQuitsystem:Landroid/widget/Button;

    .line 455
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnTakeOff:Landroid/widget/Button;

    .line 456
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnUpdateOrderPayStatue:Landroid/widget/Button;

    .line 457
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnOnlineReturn:Landroid/widget/Button;

    .line 458
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvTips:Landroid/widget/TextView;

    .line 459
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvSaleCounterTip:Landroid/widget/TextView;

    .line 460
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnSaleCounterRedDot:Landroid/widget/Button;

    .line 461
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->iv12306SaleRedDot:Landroid/widget/ImageView;

    .line 462
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tv12306SaleTip:Landroid/widget/TextView;

    .line 463
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->btnGoodsOption:Landroid/widget/Button;

    .line 464
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->vOther:Landroid/view/View;

    .line 465
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->tvFoldOther:Landroid/widget/TextView;

    .line 466
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clSell:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 467
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbSale:Lcom/google/android/flexbox/FlexboxLayout;

    .line 468
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clOrder:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 469
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOrder:Lcom/google/android/flexbox/FlexboxLayout;

    .line 470
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQuerySell:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 471
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQuerySell:Lcom/google/android/flexbox/FlexboxLayout;

    .line 472
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clQueryOther:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 473
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbQueryOther:Lcom/google/android/flexbox/FlexboxLayout;

    .line 474
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->clReceipt:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 475
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbReceipt:Lcom/google/android/flexbox/FlexboxLayout;

    .line 476
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->fbOther:Lcom/google/android/flexbox/FlexboxLayout;

    .line 478
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080099:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080099:Landroid/view/View;

    .line 480
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b5:Landroid/view/View;

    .line 482
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b0:Landroid/view/View;

    .line 484
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b6:Landroid/view/View;

    .line 486
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080098:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080098:Landroid/view/View;

    .line 488
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800aa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 489
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800aa:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800af:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800af:Landroid/view/View;

    .line 492
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a9:Landroid/view/View;

    .line 494
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a5:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a8:Landroid/view/View;

    .line 498
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a0:Landroid/view/View;

    .line 500
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b1:Landroid/view/View;

    .line 502
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a1:Landroid/view/View;

    .line 504
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 505
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009f:Landroid/view/View;

    .line 506
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a7:Landroid/view/View;

    .line 508
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a2:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009a:Landroid/view/View;

    .line 512
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ad:Landroid/view/View;

    .line 514
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009b:Landroid/view/View;

    .line 516
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ac:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ac:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b2:Landroid/view/View;

    .line 520
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b4:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a3:Landroid/view/View;

    .line 524
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800cb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800cb:Landroid/view/View;

    .line 526
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c9:Landroid/view/View;

    .line 528
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009c:Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800c4:Landroid/view/View;

    .line 532
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009e:Landroid/view/View;

    .line 534
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a4:Landroid/view/View;

    .line 536
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800a6:Landroid/view/View;

    .line 538
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800b3:Landroid/view/View;

    .line 540
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800e6:Landroid/view/View;

    .line 542
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080097:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f080097:Landroid/view/View;

    .line 544
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f0800ab:Landroid/view/View;

    .line 546
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity_ViewBinding;->view7f08009d:Landroid/view/View;

    return-void

    .line 431
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
