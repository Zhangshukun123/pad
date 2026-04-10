.class public interface abstract Lcom/ayma/commonerp/base/IBaseView;
.super Ljava/lang/Object;
.source "IBaseView.java"

# interfaces
.implements Lcom/ayma/base/mvp/IMvpBaseView;


# virtual methods
.method public abstract finishActivity()V
.end method

.method public abstract finishAll()V
.end method

.method public abstract getGoDate()Ljava/lang/String;
.end method

.method public abstract getGoDateNonePrefix()Ljava/lang/String;
.end method

.method public abstract getPermissionCode()Ljava/lang/String;
.end method

.method public abstract getTrainInfo()Ljava/lang/String;
.end method

.method public abstract getUserInfo()Ljava/lang/String;
.end method

.method public abstract hasDecimal(D)Z
.end method

.method public abstract hideInfoDetailPopup()Z
.end method

.method public abstract hideSoftKeyboard()V
.end method

.method public abstract hideSoftKeyboard(Landroid/view/View;)V
.end method

.method public abstract init()V
.end method

.method public abstract judgeRunningMode()V
.end method

.method public abstract needLogin()V
.end method

.method public abstract resetSortIcon(Landroid/view/View;)V
.end method

.method public abstract setResultCode(I)V
.end method

.method public abstract showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)V
.end method

.method public abstract showInfoDetailPopup(Lcom/ayma/commonerp/behavior/InfoDetailBehavior;)V
.end method

.method public abstract showNoticeToast(Ljava/lang/String;)V
.end method

.method public abstract showNoticeToast(Ljava/lang/String;I)V
.end method

.method public abstract showNoticeToast(Ljava/lang/String;II)V
.end method

.method public abstract showNoticeToastError(Ljava/lang/String;)V
.end method

.method public abstract showNoticeToastOk(Ljava/lang/String;)V
.end method

.method public abstract showSingleAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method public abstract showSingleAlertNoAction(Ljava/lang/CharSequence;)V
.end method

.method public abstract showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract showSingleAlertNoAction(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract showTipsOnTop(Ljava/lang/String;)V
.end method

.method public abstract updateInfo(Lcom/ayma/commonerp/bean/UpdateInfoBean;Z)V
.end method
