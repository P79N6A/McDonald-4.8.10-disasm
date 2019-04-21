.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountDeleteRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/security/account"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

.field private mQueryArgs:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;)V
    .locals 3
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p2, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    const-string v1, "accessToken"

    invoke-virtual {v0, v1, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;

    const-string v1, "/customer/security/account"

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;

    const-string v1, "id"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mQueryArgs:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityUrlQueryArgs;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mUrl:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->DELETE:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

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
            "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAuthenticationResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .prologue
    .line 63
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAccountDeleteRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountDeleteRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
