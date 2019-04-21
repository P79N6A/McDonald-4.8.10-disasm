.class final Lcom/threatmetrix/TrustDefender/TrustDefender$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;->a(Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Thread;

.field final synthetic b:Lcom/threatmetrix/TrustDefender/TrustDefender;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Ljava/lang/Thread;)V
    .locals 0
    .param p2, "t"    # Ljava/lang/Thread;

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$b;->b:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1279
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$b;->a:Ljava/lang/Thread;

    .line 1280
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1285
    invoke-static {}, Lcom/threatmetrix/TrustDefender/TrustDefender;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sending interrupt to TID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$b;->a:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$b;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1287
    return-void
.end method
