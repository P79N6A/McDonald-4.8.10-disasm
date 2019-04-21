.class final Lcom/ensighten/X$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/X;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/X;


# direct methods
.method constructor <init>(Lcom/ensighten/X;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-string v0, "The connection status has changed."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 285
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 286
    if-nez v0, :cond_2

    move-object v2, v1

    .line 287
    :goto_0
    if-nez v0, :cond_3

    move-object v0, v1

    .line 289
    :goto_1
    iget-object v1, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    .line 1054
    iget-boolean v1, v1, Lcom/ensighten/X;->j:Z

    .line 290
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    const/4 v2, 0x1

    .line 2054
    iput-boolean v2, v0, Lcom/ensighten/X;->j:Z

    .line 300
    :goto_2
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    .line 5054
    iget-boolean v0, v0, Lcom/ensighten/X;->j:Z

    .line 300
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 301
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    invoke-virtual {v0}, Lcom/ensighten/X;->c()V

    .line 302
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ensighten/X;->a(Z)V

    .line 310
    :cond_1
    :goto_3
    return-void

    .line 286
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_0

    .line 287
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_1

    .line 292
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    const/4 v2, 0x1

    .line 3054
    iput-boolean v2, v0, Lcom/ensighten/X;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/ensighten/i;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto :goto_3

    .line 295
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    const/4 v2, 0x0

    .line 4054
    iput-boolean v2, v0, Lcom/ensighten/X;->j:Z

    goto :goto_2

    .line 303
    :cond_6
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    .line 6054
    iget-boolean v0, v0, Lcom/ensighten/X;->j:Z

    .line 303
    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/ensighten/X$1;->a:Lcom/ensighten/X;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ensighten/X;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
