.class public Lcom/ayma/commonerp/widget/NoticeToast;
.super Ljava/lang/Object;
.source "NoticeToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;
    }
.end annotation


# static fields
.field public static final TYPE_NOTICE_TOAST_ERROR:I = 0x1

.field public static final TYPE_NOTICE_TOAST_INFO:I = 0x0

.field public static final TYPE_NOTICE_TOAST_OK:I = 0x2

.field private static sField_TN:Ljava/lang/reflect/Field;

.field private static sField_TN_Handler:Ljava/lang/reflect/Field;


# instance fields
.field private context:Landroid/content/Context;

.field private iv:Landroid/widget/ImageView;

.field private root:Landroid/widget/LinearLayout;

.field private tipsText:Landroid/widget/TextView;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    sget-object v0, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    .line 29
    iput-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->context:Landroid/content/Context;

    return-void
.end method

.method private static hook(Landroid/widget/Toast;)V
    .locals 3

    .line 112
    :try_start_0
    sget-object v0, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 113
    sget-object v0, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 114
    sget-object v1, Lcom/ayma/commonerp/widget/NoticeToast;->sField_TN_Handler:Ljava/lang/reflect/Field;

    new-instance v2, Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;

    invoke-direct {v2, v0}, Lcom/ayma/commonerp/widget/NoticeToast$SafelyHandlerWarpper;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public initToast(I)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    .line 35
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b011b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08061a

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->root:Landroid/widget/LinearLayout;

    const v1, 0x7f080301

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->tipsText:Landroid/widget/TextView;

    const v1, 0x7f080300

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    .line 39
    iget-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public setMessageType(I)V
    .locals 3

    const v0, 0x7f07005b

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 66
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    const v0, 0x7f0c001c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->root:Landroid/widget/LinearLayout;

    const v0, 0x7f07006c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 63
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    const v0, 0x7f0c000d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->root:Landroid/widget/LinearLayout;

    const v0, 0x7f070070

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    const v2, 0x7f0c0013

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setShowTime(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->tipsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->tipsText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ayma/commonerp/widget/NoticeToast;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->tipsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    invoke-static {v0}, Lcom/ayma/commonerp/widget/NoticeToast;->hook(Landroid/widget/Toast;)V

    .line 79
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NoticeToast;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
