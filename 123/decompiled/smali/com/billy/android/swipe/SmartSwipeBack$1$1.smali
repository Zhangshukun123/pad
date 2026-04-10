.class Lcom/billy/android/swipe/SmartSwipeBack$1$1;
.super Lcom/billy/android/swipe/listener/SimpleSwipeListener;
.source "SmartSwipeBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/billy/android/swipe/SmartSwipeBack$1;->createSwipeBackConsumer(Landroid/app/Activity;)Lcom/billy/android/swipe/SwipeConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/billy/android/swipe/SmartSwipeBack$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/billy/android/swipe/SmartSwipeBack$1;Landroid/app/Activity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1$1;->this$0:Lcom/billy/android/swipe/SmartSwipeBack$1;

    iput-object p2, p0, Lcom/billy/android/swipe/SmartSwipeBack$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/billy/android/swipe/listener/SimpleSwipeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeOpened(Lcom/billy/android/swipe/SmartSwipeWrapper;Lcom/billy/android/swipe/SwipeConsumer;I)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/billy/android/swipe/SmartSwipeBack$1$1;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
