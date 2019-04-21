.class Lcom/threatmetrix/TrustDefender/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/threatmetrix/TrustDefender/TrustDefender;

.field private b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;)V
    .locals 1
    .param p1, "profile"    # Lcom/threatmetrix/TrustDefender/TrustDefender;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    .line 12
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->b:Ljava/util/concurrent/CountDownLatch;

    .line 16
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/h;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    .line 17
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->b:Ljava/util/concurrent/CountDownLatch;

    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->a:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefender/TrustDefender;->a()V

    .line 23
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->b:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 24
    :cond_0
    return-void
.end method
