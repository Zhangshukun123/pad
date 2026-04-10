.class public Lcom/ayma/appupdater/widget/ToastCompat;
.super Ljava/lang/Object;
.source "ToastCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;
    }
.end annotation


# static fields
.field private static sField_TN:Ljava/lang/reflect/Field;

.field private static sField_TN_Handler:Ljava/lang/reflect/Field;


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 19
    sget-object v0, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mHandler"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN_Handler:Ljava/lang/reflect/Field;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hook(Landroid/widget/Toast;)V
    .locals 3

    .line 27
    :try_start_0
    sget-object v0, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 28
    sget-object v0, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN_Handler:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 29
    sget-object v1, Lcom/ayma/appupdater/widget/ToastCompat;->sField_TN_Handler:Ljava/lang/reflect/Field;

    new-instance v2, Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;

    invoke-direct {v2, v0}, Lcom/ayma/appupdater/widget/ToastCompat$SafelyHandlerWarpper;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ayma/appupdater/widget/ToastCompat;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/appupdater/widget/ToastCompat;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/ayma/appupdater/widget/ToastCompat;->mToast:Landroid/widget/Toast;

    invoke-static {p1}, Lcom/ayma/appupdater/widget/ToastCompat;->hook(Landroid/widget/Toast;)V

    .line 41
    iget-object p1, p0, Lcom/ayma/appupdater/widget/ToastCompat;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
