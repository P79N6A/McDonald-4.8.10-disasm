.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;
.super Ljava/lang/Object;
.source "MWSocialLoginInfo.java"


# instance fields
.field public accessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccessToken"
    .end annotation
.end field

.field public emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailAddress"
    .end annotation
.end field

.field public internalID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "InternalID"
    .end annotation
.end field

.field public loginType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "LoginType"
    .end annotation
.end field

.field public mobileNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobileNumber"
    .end annotation
.end field

.field public socialNetworkID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SocialNetworkID"
    .end annotation
.end field

.field public userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UserName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;)V
    .locals 2
    .param p1, "parameters"    # Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isUsingSocialLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AuthenticationParameters must be using social login"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->userName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->isAllowSocialLoginWithoutEmail()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->emailAddress:Ljava/lang/String;

    .line 40
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->loginType:I

    .line 41
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialServiceID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->socialNetworkID:I

    .line 42
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->accessToken:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->getSocialUserID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->internalID:Ljava/lang/String;

    .line 44
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialLoginInfo;->emailAddress:Ljava/lang/String;

    goto :goto_0
.end method
