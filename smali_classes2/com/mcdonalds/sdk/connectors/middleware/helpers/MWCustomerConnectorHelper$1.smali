.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;
.super Ljava/lang/Object;
.source "MWCustomerConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    move-object v1, p3

    .line 152
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    const/4 v0, 0x0

    .line 156
    .local v0, "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    if-gez v2, :cond_9

    .line 159
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x3f4

    if-ne v2, v3, :cond_0

    .line 161
    const/4 v1, 0x0

    .line 163
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 164
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPasswordChangeRequired(Z)V

    .line 266
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v0, p2, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 267
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x443

    if-ne v2, v3, :cond_2

    .line 170
    const/4 v1, 0x0

    .line 172
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 173
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 182
    :goto_1
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x839

    if-ne v2, v3, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 188
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 189
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 190
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 191
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x8ab

    if-ne v2, v3, :cond_4

    .line 196
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 197
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 198
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setActivationOption(I)V

    goto/16 :goto_0

    .line 201
    :cond_4
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x8a5

    if-ne v2, v3, :cond_5

    .line 202
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 203
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 204
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setActivationOption(I)V

    goto/16 :goto_0

    .line 207
    :cond_5
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x847

    if-ne v2, v3, :cond_6

    .line 209
    const/4 v1, 0x0

    .line 212
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 213
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 216
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 217
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 218
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_6
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x840

    if-ne v2, v3, :cond_7

    .line 223
    const/4 v1, 0x0

    .line 225
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-static {v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    goto/16 :goto_0

    .line 227
    :cond_7
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    const/16 v3, -0x408

    if-ne v2, v3, :cond_8

    .line 228
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 229
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .end local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 230
    .restart local v0    # "customer":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUserName(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 233
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 234
    invoke-virtual {v0, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 235
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialUserID(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialProvider(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 241
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialServiceAuthenticationID(I)V

    goto/16 :goto_0

    .line 243
    :cond_8
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    goto/16 :goto_0

    .line 245
    :cond_9
    if-nez v1, :cond_b

    .line 248
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-static {v2, p1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 249
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 250
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLogin(Z)V

    .line 251
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->val$parameters:Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setUsingSocialLoginWithoutEmail(Z)V

    .line 252
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 254
    sget-object v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setVerificationType(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;)V

    .line 256
    :cond_a
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSocialAccountLoginRegistered(Z)V

    .line 258
    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailActivated(Z)V

    goto/16 :goto_0

    .line 262
    :cond_b
    invoke-static {}, Lcom/mcdonalds/sdk/services/network/SessionManager;->getInstance()Lcom/mcdonalds/sdk/services/network/SessionManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/network/SessionManager;->setTokenAuthenticated(Z)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 148
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWCustomerConnectorHelper$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSignInAndAuthenticateResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
