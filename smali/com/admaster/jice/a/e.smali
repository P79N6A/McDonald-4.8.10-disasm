.class Lcom/admaster/jice/a/e;
.super Ljava/lang/Object;
.source "JiceCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/d;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 416
    sget-object v0, Lcom/admaster/jice/a/i;->JICEAPPSTART:Lcom/admaster/jice/a/i;

    .line 419
    iget-object v0, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admaster/jice/a/x;->a()Lcom/admaster/jice/a/y;

    move-result-object v0

    .line 420
    sget-object v1, Lcom/admaster/jice/a/y;->ACTIVED:Lcom/admaster/jice/a/y;

    if-ne v0, v1, :cond_6

    .line 421
    sget-object v1, Lcom/admaster/jice/a/i;->JICEAPPSTART:Lcom/admaster/jice/a/i;

    .line 422
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;J)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v0}, Lcom/admaster/jice/a/i;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    const/4 v0, 0x0

    .line 434
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    :cond_0
    const-string v0, "initSysEvent eventname or expire is empty"

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    const-string v5, ""

    invoke-static {v4, v3, v5, v0}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 443
    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-direct {v4, v3, v1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->e(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/d/b;

    move-result-object v5

    invoke-static {}, Lcom/admaster/jice/b/a;->e()Ljava/lang/String;

    move-result-object v6

    .line 446
    iget-object v0, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/admaster/jice/b/a;->f()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    .line 445
    invoke-virtual {v5, v6, v0, v7}, Lcom/admaster/jice/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    .line 454
    if-eqz v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 455
    :cond_2
    const-string v5, "JiceError"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initSysEvent:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   expire:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "   event:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  hasActived:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_3
    if-nez v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v3

    sget-object v5, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    iget-object v0, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v5, v0, v1}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_4
    if-nez v2, :cond_5

    .line 464
    iget-object v0, p0, Lcom/admaster/jice/a/e;->a:Lcom/admaster/jice/a/d;

    invoke-static {v0}, Lcom/admaster/jice/a/d;->i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v0

    sget-object v1, Lcom/admaster/jice/a/y;->ACTIVED:Lcom/admaster/jice/a/y;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/x;->a(Lcom/admaster/jice/a/y;)V

    .line 467
    :cond_5
    return-void

    .line 424
    :cond_6
    sget-object v1, Lcom/admaster/jice/a/i;->JICEACTIVE:Lcom/admaster/jice/a/i;

    .line 425
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    goto/16 :goto_0
.end method
