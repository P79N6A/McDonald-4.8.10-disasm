.class Lcom/amap/api/services/core/bd$a;
.super Ljava/lang/Object;
.source "ExceptionLogWriter.java"

# interfaces
.implements Lcom/amap/api/services/core/bm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/bd;

.field private b:Lcom/amap/api/services/core/aj;


# direct methods
.method constructor <init>(Lcom/amap/api/services/core/bd;Lcom/amap/api/services/core/aj;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amap/api/services/core/bd$a;->a:Lcom/amap/api/services/core/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/amap/api/services/core/bd$a;->b:Lcom/amap/api/services/core/aj;

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/bd$a;->b:Lcom/amap/api/services/core/aj;

    iget-object v1, p0, Lcom/amap/api/services/core/bd$a;->a:Lcom/amap/api/services/core/bd;

    invoke-virtual {v1}, Lcom/amap/api/services/core/bd;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/amap/api/services/core/aj;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
