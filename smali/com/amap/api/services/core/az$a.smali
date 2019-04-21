.class Lcom/amap/api/services/core/az$a;
.super Ljava/lang/Object;
.source "ANRLogWriter.java"

# interfaces
.implements Lcom/amap/api/services/core/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/az;

.field private b:Lcom/amap/api/services/core/aj;


# direct methods
.method private constructor <init>(Lcom/amap/api/services/core/az;Lcom/amap/api/services/core/aj;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/amap/api/services/core/az$a;->a:Lcom/amap/api/services/core/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/amap/api/services/core/az$a;->b:Lcom/amap/api/services/core/aj;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/services/core/az;Lcom/amap/api/services/core/aj;Lcom/amap/api/services/core/az$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/core/az$a;-><init>(Lcom/amap/api/services/core/az;Lcom/amap/api/services/core/aj;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/az$a;->b:Lcom/amap/api/services/core/aj;

    iget-object v1, p0, Lcom/amap/api/services/core/az$a;->a:Lcom/amap/api/services/core/az;

    invoke-virtual {v1}, Lcom/amap/api/services/core/az;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/core/aj;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
