.class final Lcom/threatmetrix/TrustDefender/TrustDefender$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefender/TrustDefender;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/threatmetrix/TrustDefender/ProfilingResult;

.field final b:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

.field final synthetic c:Lcom/threatmetrix/TrustDefender/TrustDefender;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/TrustDefender;Lcom/threatmetrix/TrustDefender/ProfilingResult;Lcom/threatmetrix/TrustDefender/EndNotifierBase;)V
    .locals 0
    .param p2, "t"    # Lcom/threatmetrix/TrustDefender/ProfilingResult;
    .param p3, "n"    # Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->c:Lcom/threatmetrix/TrustDefender/TrustDefender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->a:Lcom/threatmetrix/TrustDefender/ProfilingResult;

    .line 973
    iput-object p3, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->b:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .line 974
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->b:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->b:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    instance-of v0, v0, Lcom/threatmetrix/TrustDefender/EndNotifier;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->b:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    check-cast v0, Lcom/threatmetrix/TrustDefender/EndNotifier;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/TrustDefender$a;->a:Lcom/threatmetrix/TrustDefender/ProfilingResult;

    invoke-interface {v0, v1}, Lcom/threatmetrix/TrustDefender/EndNotifier;->complete(Lcom/threatmetrix/TrustDefender/ProfilingResult;)V

    .line 986
    :cond_0
    return-void
.end method
