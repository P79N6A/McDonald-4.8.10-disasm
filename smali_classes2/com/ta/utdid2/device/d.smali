.class public Lcom/ta/utdid2/device/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/ta/utdid2/a/a/b;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/ta/utdid2/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {p1}, Lcom/ta/utdid2/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method