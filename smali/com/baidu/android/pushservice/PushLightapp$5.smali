.class Lcom/baidu/android/pushservice/PushLightapp$5;
.super Lcom/baidu/android/pushservice/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/PushLightapp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/android/pushservice/IPushLightappListener;


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$5;->a:Lcom/baidu/android/pushservice/IPushLightappListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushLightapp$5;->a:Lcom/baidu/android/pushservice/IPushLightappListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/android/pushservice/IPushLightappListener;->onUnsubscribeResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
