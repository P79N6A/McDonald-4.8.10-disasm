.class final Lcom/threatmetrix/TrustDefender/al$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/al;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/al;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 129
    const-string v4, "onConnected"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    invoke-static {}, Lcom/threatmetrix/TrustDefender/l;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    sget-object v4, Lcom/threatmetrix/TrustDefender/l;->o:Ljava/lang/reflect/Field;

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "fusedLocationObject":Ljava/lang/Object;
    sget-object v4, Lcom/threatmetrix/TrustDefender/l;->G:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v6}, Lcom/threatmetrix/TrustDefender/al;->a(Lcom/threatmetrix/TrustDefender/al;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v4, v5}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    .local v2, "locationResult":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 138
    check-cast v1, Landroid/location/Location;

    .line 140
    .local v1, "location":Landroid/location/Location;
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/al;->b(Lcom/threatmetrix/TrustDefender/al;)Lcom/threatmetrix/TrustDefender/ao;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/threatmetrix/TrustDefender/ao;->onLocationChanged(Landroid/location/Location;)V

    .line 143
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v4}, Lcom/threatmetrix/TrustDefender/al;->c(Lcom/threatmetrix/TrustDefender/al;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 145
    :try_start_0
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    sget-object v6, Lcom/threatmetrix/TrustDefender/l$a;->f:Lcom/threatmetrix/TrustDefender/l$a;

    invoke-virtual {v5, v6}, Lcom/threatmetrix/TrustDefender/al;->a(Lcom/threatmetrix/TrustDefender/l$a;)V

    .line 146
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v5}, Lcom/threatmetrix/TrustDefender/al;->d(Lcom/threatmetrix/TrustDefender/al;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 150
    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefender/al;->i()V

    .line 152
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "fusedLocationObject":Ljava/lang/Object;
    .end local v2    # "locationResult":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-object v3

    .line 152
    .restart local v0    # "fusedLocationObject":Ljava/lang/Object;
    .restart local v2    # "locationResult":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 156
    .end local v0    # "fusedLocationObject":Ljava/lang/Object;
    .end local v2    # "locationResult":Ljava/lang/Object;
    :cond_3
    const-string v4, "onConnectionSuspended"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 158
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 160
    invoke-static {}, Lcom/threatmetrix/TrustDefender/al;->k()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection to the Google Service is suspended, the error code is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_4
    const-string v4, "onConnectionFailed"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 168
    invoke-static {}, Lcom/threatmetrix/TrustDefender/al;->k()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection to the Google Service is failed. The error code is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_5
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/al$a;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v3, p2, p3}, Lcom/threatmetrix/TrustDefender/al;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method
