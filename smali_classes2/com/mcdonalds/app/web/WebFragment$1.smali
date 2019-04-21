.class Lcom/mcdonalds/app/web/WebFragment$1;
.super Landroid/webkit/WebViewClient;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/web/WebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/web/WebFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/web/WebFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/web/WebFragment;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "onPageFinished"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/web/WebFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v1, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$200(Lcom/mcdonalds/app/web/WebFragment;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/web/WebFragment;->access$200(Lcom/mcdonalds/app/web/WebFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/web/WebFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/mcdonalds/app/web/WebFragment;->access$102(Lcom/mcdonalds/app/web/WebFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/web/WebFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/web/WebFragment;->access$100(Lcom/mcdonalds/app/web/WebFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$300(Lcom/mcdonalds/app/web/WebFragment;)Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$300(Lcom/mcdonalds/app/web/WebFragment;)Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/web/WebFragment$WebFragmentListener;->onPageLoaded()V

    .line 210
    :cond_0
    const-string v0, "javascript:(function(){document.getElementsByTagName(\'header\')[0].style.display=\'none\';})();"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 212
    :cond_1
    return-void

    .line 203
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const-string v3, "shouldOverrideUrlLoading"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    if-eqz p2, :cond_0

    const-string v3, "mcdmobileapp://"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/web/WebFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-virtual {v3, p2}, Lcom/mcdonalds/app/web/WebFragment;->openSelfUrl(Ljava/lang/String;)V

    .line 239
    :goto_0
    return v2

    .line 223
    :cond_0
    if-eqz p2, :cond_1

    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v1

    .line 227
    .local v1, "mt":Landroid/net/MailTo;
    invoke-virtual {v1}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/mcdonalds/app/web/WebFragment;->newEmailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/web/WebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "mt":Landroid/net/MailTo;
    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "tel:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 234
    iget-object v3, p0, Lcom/mcdonalds/app/web/WebFragment$1;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/web/WebFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
