.class Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;
.super Landroid/webkit/WebViewClient;
.source "OAuthAccessTokenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onPageFinished"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    iget-boolean v1, v1, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->handled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$000(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Lcom/mcdonalds/app/social/OAuth2Helper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/social/OAuth2Helper;->getOauth2Params()Lcom/mcdonalds/app/social/Oauth2Params;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/social/Oauth2Params;->getRedirectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$100(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    iget-boolean v0, v0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->handled:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;

    iget-object v1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    iget-object v2, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$000(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Lcom/mcdonalds/app/social/OAuth2Helper;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;-><init>(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;Ljava/lang/String;Lcom/mcdonalds/app/social/OAuth2Helper;)V

    new-array v1, v3, [Landroid/net/Uri;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$ProcessToken;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    invoke-static {v0}, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->access$100(Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-string v0, "onPageStarted"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity$1;->this$0:Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;

    iget-boolean v1, v1, Lcom/mcdonalds/app/social/OAuthAccessTokenActivity;->handled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->temp(Ljava/lang/String;)V

    .line 58
    return-void
.end method
