.class public Lio/fabric/sdk/android/services/common/SafeToast;
.super Landroid/widget/Toast;
.source "SafeToast.java"


# direct methods
.method static synthetic access$001(Lio/fabric/sdk/android/services/common/SafeToast;)V
    .locals 0
    .param p0, "x0"    # Lio/fabric/sdk/android/services/common/SafeToast;

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 47
    invoke-super {p0}, Landroid/widget/Toast;->show()V

    .line 57
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lio/fabric/sdk/android/services/common/SafeToast$1;

    invoke-direct {v1, p0}, Lio/fabric/sdk/android/services/common/SafeToast$1;-><init>(Lio/fabric/sdk/android/services/common/SafeToast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
