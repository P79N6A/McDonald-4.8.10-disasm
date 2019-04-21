.class public Lcom/threatmetrix/TrustDefender/ProfilingOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/location/Location;

.field private d:Lcom/threatmetrix/TrustDefender/EndNotifierBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->d:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method final c()Landroid/location/Location;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->c:Landroid/location/Location;

    return-object v0
.end method

.method final d()Lcom/threatmetrix/TrustDefender/EndNotifierBase;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->d:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    return-object v0
.end method

.method public setEndNotifier(Lcom/threatmetrix/TrustDefender/EndNotifierBase;)Lcom/threatmetrix/TrustDefender/ProfilingOptions;
    .locals 0
    .param p1, "notifier"    # Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->d:Lcom/threatmetrix/TrustDefender/EndNotifierBase;

    .line 112
    return-object p0
.end method

.method public setSessionID(Ljava/lang/String;)Lcom/threatmetrix/TrustDefender/ProfilingOptions;
    .locals 0
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/ProfilingOptions;->a:Ljava/lang/String;

    .line 47
    return-object p0
.end method
