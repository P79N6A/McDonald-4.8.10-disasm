.class Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;
.super Landroid/webkit/WebViewClient;
.source "TermsOfServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onPageFinished"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090743

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$000(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$100(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$000(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$200(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$100(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$100(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void

    .line 140
    .restart local v0    # "title":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

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

    .line 179
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->access$300(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "shouldOverrideUrlLoading"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    aput-object p2, v6, v3

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    if-eqz p2, :cond_0

    const-string v5, "mcdmobileapp://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 159
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v4, p2}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->openSelfUrl(Ljava/lang/String;)V

    .line 173
    :goto_0
    return v3

    .line 161
    :cond_0
    if-eqz p2, :cond_1

    const-string v5, "mailto:"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v2

    .line 163
    .local v2, "mt":Landroid/net/MailTo;
    invoke-virtual {v2}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v2}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-static {v4, v5, v6, v7}, Lcom/mcdonalds/app/web/WebFragment;->newEmailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$3;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0

    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mt":Landroid/net/MailTo;
    :cond_1
    move v3, v4

    .line 173
    goto :goto_0
.end method
