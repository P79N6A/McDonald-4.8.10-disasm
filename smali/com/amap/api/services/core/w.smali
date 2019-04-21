.class public Lcom/amap/api/services/core/w;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/services/core/w;->a:I

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/core/w;->b:Ljava/lang/String;

    .line 26
    const-string v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/services/core/w;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p0}, Lcom/amap/api/services/core/v;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method
