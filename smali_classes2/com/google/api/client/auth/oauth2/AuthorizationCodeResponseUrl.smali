.class public Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
.super Lcom/google/api/client/http/GenericUrl;
.source "AuthorizationCodeResponseUrl.java"


# virtual methods
.method public clone()Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/http/GenericUrl;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->clone()Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->clone()Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->clone()Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/google/api/client/http/GenericUrl;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/GenericUrl;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/GenericUrl;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/AuthorizationCodeResponseUrl;

    move-result-object v0

    return-object v0
.end method
