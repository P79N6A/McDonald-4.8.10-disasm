.class Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/web/WebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullScreenChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/web/WebFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/web/WebFragment;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/web/WebFragment;Lcom/mcdonalds/app/web/WebFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/web/WebFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/web/WebFragment$1;

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;-><init>(Lcom/mcdonalds/app/web/WebFragment;)V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onGeolocationPermissionsShowPrompt"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-interface {p2, p1, v3, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 249
    return-void
.end method

.method public onHideCustomView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "onHideCustomView"

    invoke-static {p0, v0, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$500(Lcom/mcdonalds/app/web/WebFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$500(Lcom/mcdonalds/app/web/WebFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/web/WebFragment;->access$500(Lcom/mcdonalds/app/web/WebFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 279
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/web/WebFragment;->access$502(Lcom/mcdonalds/app/web/WebFragment;Landroid/view/View;)Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$400(Lcom/mcdonalds/app/web/WebFragment;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 283
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$600(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/web/WebFragment;->access$802(Lcom/mcdonalds/app/web/WebFragment;Z)Z

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onShowCustomView"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 255
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0, p2}, Lcom/mcdonalds/app/web/WebFragment;->access$402(Lcom/mcdonalds/app/web/WebFragment;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/web/WebFragment;->access$502(Lcom/mcdonalds/app/web/WebFragment;Landroid/view/View;)Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$600(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/web/WebFragment;->access$700(Lcom/mcdonalds/app/web/WebFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 264
    iget-object v0, p0, Lcom/mcdonalds/app/web/WebFragment$FullScreenChromeClient;->this$0:Lcom/mcdonalds/app/web/WebFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/web/WebFragment;->access$802(Lcom/mcdonalds/app/web/WebFragment;Z)Z

    .line 265
    return-void
.end method
