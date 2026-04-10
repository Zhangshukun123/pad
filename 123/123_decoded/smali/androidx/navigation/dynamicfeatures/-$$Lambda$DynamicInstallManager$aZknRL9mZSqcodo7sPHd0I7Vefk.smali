.class public final synthetic Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field public final synthetic f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

.field public final synthetic f$2:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$0:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$2:Landroidx/lifecycle/MutableLiveData;

    iput-object p4, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$0:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallManager;

    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$2:Landroidx/lifecycle/MutableLiveData;

    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$aZknRL9mZSqcodo7sPHd0I7Vefk;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->lambda$aZknRL9mZSqcodo7sPHd0I7Vefk(Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/navigation/dynamicfeatures/DynamicInstallManager;Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
