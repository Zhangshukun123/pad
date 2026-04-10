.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$UoeKptAZVDHfGtYwwLKCNRkaDNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$UoeKptAZVDHfGtYwwLKCNRkaDNM;->f$0:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamhandover/-$$Lambda$TeamHandoverActivity$UoeKptAZVDHfGtYwwLKCNRkaDNM;->f$0:Landroid/app/AlertDialog;

    invoke-static {v0, p1}, Lcom/ayma/commonerp/ui/activity/teamhandover/TeamHandoverActivity;->lambda$showEditCountDialog$4(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
