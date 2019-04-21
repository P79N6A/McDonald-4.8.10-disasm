.class Lcom/admaster/jice/a/s;
.super Ljava/lang/Object;
.source "JicePushView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/o;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/s;->a:Lcom/admaster/jice/a/o;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/admaster/jice/a/s;->a:Lcom/admaster/jice/a/o;

    invoke-static {v0}, Lcom/admaster/jice/a/o;->a(Lcom/admaster/jice/a/o;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/admaster/jice/a/s;->a:Lcom/admaster/jice/a/o;

    invoke-static {v1}, Lcom/admaster/jice/a/o;->b(Lcom/admaster/jice/a/o;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lcom/admaster/jice/a/s;->a:Lcom/admaster/jice/a/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admaster/jice/a/o;->a(Lcom/admaster/jice/a/o;Z)V

    .line 231
    invoke-static {}, Lcom/admaster/jice/a/o;->e()Lcom/admaster/jice/a/w;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/admaster/jice/a/o;->e()Lcom/admaster/jice/a/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/admaster/jice/a/w;->a()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/s;->a:Lcom/admaster/jice/a/o;

    invoke-virtual {v0}, Lcom/admaster/jice/a/o;->d()V

    .line 235
    return-void
.end method
