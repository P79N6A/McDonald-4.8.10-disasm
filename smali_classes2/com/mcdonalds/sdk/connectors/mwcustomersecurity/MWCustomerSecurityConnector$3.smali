.class Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;
.super Ljava/lang/Object;
.source "MWCustomerSecurityConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->register(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

.field final synthetic val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    .line 354
    move-object v2, p3

    .line 357
    .local v2, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6011"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 360
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getCapturedUserResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->getPrimaryAddressResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;->getMobilePhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setMobileNumber(Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 362
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 363
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$102(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$202(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->this$0:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$customer:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-static {v3, v4, v5}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$300(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 388
    .end local v0    # "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :goto_0
    return-void

    .line 369
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "390"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 370
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getDetails()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsResponse;->getInvalidFields()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;

    move-result-object v1

    .line 371
    .local v1, "errorResponse":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;->getMobile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 372
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$700()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, p2, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, p2, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;->getMobile()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 376
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$900()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v6, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, p2, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 381
    .end local v1    # "errorResponse":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsInvalidFieldsResponse;
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6901"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 382
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1000()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v6, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_0

    .line 383
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;->getStatusCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "6900"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$1100()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v6, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_0

    .line 386
    :cond_6
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v4, Lcom/mcdonalds/sdk/AsyncException;

    invoke-static {}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->access$600()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v6, v6, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 351
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector$3;->onResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountNativeResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
