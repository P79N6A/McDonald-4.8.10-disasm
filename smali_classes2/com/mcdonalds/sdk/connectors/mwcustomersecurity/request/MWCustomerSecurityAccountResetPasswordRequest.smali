.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountResetPasswordRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountResetPasswordResponse;",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/security/password/reset"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

.field private mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "authorizationCode"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    .line 29
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v1, "newPassword"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v1, "newPasswordConfirm"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v1, "authorizationCode"

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "/customer/security/password/reset"

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mUrl:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountResetPasswordResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    const-class v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountResetPasswordResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .prologue
    .line 67
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerRegisterRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountResetPasswordRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
