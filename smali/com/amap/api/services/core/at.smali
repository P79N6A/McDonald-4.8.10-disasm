.class public Lcom/amap/api/services/core/at;
.super Ljava/lang/Object;
.source "ConstConfig.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/services/core/at;->a:Ljava/lang/String;

    .line 10
    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/services/core/at;->b:Ljava/lang/String;

    .line 24
    const-string v0, "9aj&#k81"

    sput-object v0, Lcom/amap/api/services/core/at;->a:Ljava/lang/String;

    .line 25
    const-string v0, "http://logs.amap.com/ws/log/upload?product=%s&type=%s&platform=%s&channel=%s&sign=%s"

    sput-object v0, Lcom/amap/api/services/core/at;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
