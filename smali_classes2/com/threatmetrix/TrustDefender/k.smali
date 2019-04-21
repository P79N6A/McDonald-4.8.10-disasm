.class Lcom/threatmetrix/TrustDefender/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/k$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Lcom/threatmetrix/TrustDefender/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/threatmetrix/TrustDefender/k;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/k;->b:Ljava/util/concurrent/CountDownLatch;

    .line 33
    new-instance v0, Lcom/threatmetrix/TrustDefender/k$a;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/k;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Lcom/threatmetrix/TrustDefender/k$a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/k;->c:Lcom/threatmetrix/TrustDefender/k$a;

    .line 34
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/threatmetrix/TrustDefender/k;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/k;->b:Ljava/util/concurrent/CountDownLatch;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/k;->c:Lcom/threatmetrix/TrustDefender/k$a;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/k$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 72
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/k;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 83
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/k;->a:Ljava/lang/String;

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/threatmetrix/TrustDefender/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/k;->c:Lcom/threatmetrix/TrustDefender/k$a;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method
