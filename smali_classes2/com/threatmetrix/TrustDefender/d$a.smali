.class Lcom/threatmetrix/TrustDefender/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field b:Lcom/threatmetrix/TrustDefender/d;

.field c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "info"    # Lcom/threatmetrix/TrustDefender/d;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d$a;->b:Lcom/threatmetrix/TrustDefender/d;

    .line 28
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d$a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 33
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/d$a;->b:Lcom/threatmetrix/TrustDefender/d;

    .line 34
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/d$a;->c:Ljava/util/concurrent/CountDownLatch;

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method
