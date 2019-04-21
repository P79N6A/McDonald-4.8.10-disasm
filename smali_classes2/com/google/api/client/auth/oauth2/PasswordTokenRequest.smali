.class public Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
.super Lcom/google/api/client/auth/oauth2/TokenRequest;
.source "PasswordTokenRequest.java"


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/TokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .param p1, "clientAuthentication"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->setClientAuthentication(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .param p1, "grantType"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->setGrantType(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .param p1, "requestInitializer"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpRequestInitializer;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->setRequestInitializer(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "scopes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->setScopes(Ljava/util/Collection;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method

.method public setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;
    .locals 1
    .param p1, "tokenServerUrl"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/api/client/auth/oauth2/TokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    return-object v0
.end method

.method public bridge synthetic setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/TokenRequest;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;->setTokenServerUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/auth/oauth2/PasswordTokenRequest;

    move-result-object v0

    return-object v0
.end method
