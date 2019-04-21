.class public Lcom/threatmetrix/TrustDefender/ProfilingResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/threatmetrix/TrustDefender/THMStatusCode;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/threatmetrix/TrustDefender/THMStatusCode;)V
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ProfilingResult;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/threatmetrix/TrustDefender/ProfilingResult;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    .line 18
    return-void
.end method


# virtual methods
.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingResult;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/threatmetrix/TrustDefender/THMStatusCode;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingResult;->b:Lcom/threatmetrix/TrustDefender/THMStatusCode;

    return-object v0
.end method
