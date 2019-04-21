.class Lcom/admaster/jice/api/a;
.super Ljava/lang/Object;
.source "JicePushActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/admaster/jice/api/JicePushActivity;


# direct methods
.method constructor <init>(Lcom/admaster/jice/api/JicePushActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/api/a;->a:Lcom/admaster/jice/api/JicePushActivity;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/admaster/jice/api/a;->a:Lcom/admaster/jice/api/JicePushActivity;

    invoke-static {v0}, Lcom/admaster/jice/api/JicePushActivity;->a(Lcom/admaster/jice/api/JicePushActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 302
    invoke-static {}, Lcom/admaster/jice/api/JicePushActivity;->a()Lcom/admaster/jice/a/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/admaster/jice/api/JicePushActivity;->a()Lcom/admaster/jice/a/w;

    move-result-object v0

    iget-object v1, p0, Lcom/admaster/jice/api/a;->a:Lcom/admaster/jice/api/JicePushActivity;

    invoke-static {v1}, Lcom/admaster/jice/api/JicePushActivity;->b(Lcom/admaster/jice/api/JicePushActivity;)Lcom/admaster/jice/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/jice/api/a;->a:Lcom/admaster/jice/api/JicePushActivity;

    invoke-static {v2}, Lcom/admaster/jice/api/JicePushActivity;->b(Lcom/admaster/jice/api/JicePushActivity;)Lcom/admaster/jice/b/d;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/admaster/jice/b/d;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-interface {v0, v1, v2}, Lcom/admaster/jice/a/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/admaster/jice/api/a;->a:Lcom/admaster/jice/api/JicePushActivity;

    invoke-static {v0}, Lcom/admaster/jice/api/JicePushActivity;->c(Lcom/admaster/jice/api/JicePushActivity;)V

    .line 312
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/admaster/jice/api/JicePushActivity;->a()Lcom/admaster/jice/a/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/admaster/jice/api/JicePushActivity;->a()Lcom/admaster/jice/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/admaster/jice/a/w;->a()V

    goto :goto_0
.end method
