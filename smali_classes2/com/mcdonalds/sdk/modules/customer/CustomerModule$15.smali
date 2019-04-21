.class Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;
.super Ljava/lang/Object;
.source "CustomerModule.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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

.field final synthetic val$customerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

.field final synthetic val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/connectors/CustomerConnector;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p4, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$customerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    iput-object p5, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

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
    .line 712
    if-eqz p3, :cond_1

    .line 713
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 732
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-interface {v0, p1, v1, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 733
    return-void

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$moduleToken:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-static {v0, v1, p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->access$300(Lcom/mcdonalds/sdk/modules/customer/CustomerModule;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncToken;)V

    .line 719
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 721
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 722
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    .line 723
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$profile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 727
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->val$customerConnector:Lcom/mcdonalds/sdk/connectors/CustomerConnector;

    instance-of v0, v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    if-nez v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->this$0:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 709
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule$15;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
