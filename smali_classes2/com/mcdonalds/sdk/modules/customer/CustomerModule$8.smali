.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 532
    if-nez p3, :cond_2

    if-eqz p1, :cond_0

    .line 533
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 534
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 535
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSocialAccountLoginRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$402(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Z)Z

    .line 546
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    const-string v1, "MCD_LOGIN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 549
    return-void

    .line 542
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$402(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Z)Z

    .line 544
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 528
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$8;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
