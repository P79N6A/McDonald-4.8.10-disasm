.class Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;
.super Landroid/os/AsyncTask;
.source "OAuthAccessTokenActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessToken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final mAuthHelper:Lcom/mcdonalds/app/social/OAuth2Helper;

.field startActivity:Z

.field final synthetic this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;Ljava/lang/String;Lcom/mcdonalds/app/social/OAuth2Helper;)V
    .locals 1
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "oAuth2Helper"    # Lcom/mcdonalds/app/social/OAuth2Helper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->startActivity:Z

    .line 102
    iput-object p2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->mAuthHelper:Lcom/mcdonalds/app/social/OAuth2Helper;

    .line 104
    return-void
.end method

.method private extractCodeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v1, "extractCodeFromUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->mAuthHelper:Lcom/mcdonalds/app/social/OAuth2Helper;

    invoke-virtual {v1}, Lcom/mcdonalds/app/social/OAuth2Helper;->getOauth2Params()Lcom/mcdonalds/app/social/Oauth2Params;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/social/Oauth2Params;->getRedirectUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "encodedCode":Ljava/lang/String;
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OAuthAccessTokenActivity$ProcessToken#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "doInBackground"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OAuthAccessTokenActivity$ProcessToken#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const-string v2, "doInBackground"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->mAuthHelper:Lcom/mcdonalds/app/social/OAuth2Helper;

    invoke-virtual {v3}, Lcom/mcdonalds/app/social/OAuth2Helper;->getOauth2Params()Lcom/mcdonalds/app/social/Oauth2Params;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/social/Oauth2Params;->getRedirectUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    iput-boolean v5, v2, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->handled:Z

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 115
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->extractCodeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "authorizationCode":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$000(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Lcom/mcdonalds/app/social/OAuth2Helper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/social/OAuth2Helper;->retrieveAndStoreAccessToken(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->startActivity:Z

    .line 121
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$202(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;Z)Z

    .line 134
    .end local v0    # "authorizationCode":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    const-string v3, "error="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->startActivity:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not doing anything for url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "OAuthAccessTokenActivity$ProcessToken#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->onPostExecute(Ljava/lang/Void;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "OAuthAccessTokenActivity$ProcessToken#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    const-string v2, "onPostExecute"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-boolean v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->startActivity:Z

    if-eqz v2, :cond_0

    .line 154
    const-string v2, " ++++++++++++ Notifying Listener"

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;-><init>()V

    .line 156
    .local v1, "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    const/4 v0, 0x0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$300(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v4

    if-eqz v0, :cond_1

    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v4, v1, v3, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 163
    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-virtual {v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->finish()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    :cond_0
    return-void

    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "results":Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
    :cond_1
    move-object v2, v3

    .line 161
    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const-string v0, "onPreExecute"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method
