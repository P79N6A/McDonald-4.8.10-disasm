.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAuthenticationRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/security/authentication"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-direct {v0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v1, "emailAddress"

    invoke-virtual {v0, v1, p2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "/customer/security/authentication"

    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mUrl:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

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
    .line 72
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
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 42
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
            "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAuthenticationNativeResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .line 63
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAuthenticationRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAuthenticationRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method