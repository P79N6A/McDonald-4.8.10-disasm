.class final Lcom/threatmetrix/TrustDefender/g$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/g;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    const/4 v0, 0x0

    .line 373
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/g$l;->a:Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    .line 365
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    .line 378
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->b()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    .line 382
    :cond_1
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 386
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->c()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 390
    :cond_0
    return v0
.end method

.method final a(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 395
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->d()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 399
    :cond_0
    return-wide v0
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 404
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 408
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method final a()V
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->i()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 441
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 413
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->f()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 417
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 421
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 425
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->h()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/g$l;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    :cond_0
    return-void
.end method
