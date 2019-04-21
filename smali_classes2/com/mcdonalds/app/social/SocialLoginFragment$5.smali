.class Lcom/mcdonalds/app/social/SocialLoginFragment$5;
.super Landroid/os/AsyncTask;
.source "SocialLoginFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/SocialLoginFragment;->acquireGoogleUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/SocialLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/SocialLoginFragment;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SocialLoginFragment$5#doInBackground"

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

    .line 712
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SocialLoginFragment$5#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v4, "doInBackground"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    const/4 v0, 0x0

    .line 717
    .local v0, "accessToken":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    iget-object v6, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    .line 718
    invoke-static {v6}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$100(Lcom/mcdonalds/app/social/SocialLoginFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "oauth2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    .line 720
    :catch_0
    move-exception v3

    .line 724
    .local v3, "transientEx":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0

    .line 725
    .end local v3    # "transientEx":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 727
    .local v2, "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    iget-object v4, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-virtual {v4}, Lcom/mcdonalds/app/social/SocialLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 728
    .end local v2    # "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_2
    move-exception v1

    .line 731
    .local v1, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v1}, Lcom/google/android/gms/auth/GoogleAuthException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    .end local v1    # "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    :catch_3
    move-exception v2

    .line 733
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "SocialLoginFragment$5#onPostExecute"

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

    .line 712
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SocialLoginFragment$5#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const-string v0, "onPostExecute"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/mcdonalds/app/social/SocialLoginFragment$5;->this$0:Lcom/mcdonalds/app/social/SocialLoginFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/social/SocialLoginFragment;->access$700(Lcom/mcdonalds/app/social/SocialLoginFragment;Ljava/lang/String;)V

    .line 743
    :cond_0
    return-void
.end method
