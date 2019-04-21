.class Lcom/admaster/jice/a/k;
.super Ljava/lang/Object;
.source "JicePushManager.java"

# interfaces
.implements Lcom/admaster/jice/a/w;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/j;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewDismissed()V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Z)V

    .line 589
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    .line 579
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->b(Lcom/admaster/jice/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewClicked(Ljava/lang/String;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Z)V

    .line 599
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    sget-object v1, Lcom/admaster/jice/a/i;->JICECLICKPUSH:Lcom/admaster/jice/a/i;

    invoke-virtual {v1}, Lcom/admaster/jice/a/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    invoke-static {v0}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewShowed()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/k;->a:Lcom/admaster/jice/a/j;

    sget-object v1, Lcom/admaster/jice/a/i;->JICESHOWPUSH:Lcom/admaster/jice/a/i;

    invoke-virtual {v1}, Lcom/admaster/jice/a/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/a/j;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void
.end method
