.class public abstract Lcom/amap/api/services/core/ak;
.super Ljava/lang/Object;
.source "LogEntity.java"

# interfaces
.implements Lcom/amap/api/services/core/ao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/api/services/core/ao",
        "<",
        "Lcom/amap/api/services/core/al;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Lcom/amap/api/services/core/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/api/services/core/ag;->l:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/services/core/ak;->a:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/amap/api/services/core/ag;->m:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/services/core/ak;->b:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/amap/api/services/core/ag;->n:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/services/core/ak;->c:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/amap/api/services/core/ag;->f:Ljava/lang/String;

    sput-object v0, Lcom/amap/api/services/core/ak;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/amap/api/services/core/al;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 43
    if-nez p1, :cond_0

    .line 62
    :goto_0
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 49
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 52
    new-instance v1, Lcom/amap/api/services/core/al;

    invoke-direct {v1}, Lcom/amap/api/services/core/al;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/amap/api/services/core/al;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v3}, Lcom/amap/api/services/core/al;->a(I)V

    .line 55
    invoke-static {v4}, Lcom/amap/api/services/core/as;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/core/al;->b(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, v5}, Lcom/amap/api/services/core/al;->b(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 60
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public a(Lcom/amap/api/services/core/al;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    .line 69
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 6
    check-cast p1, Lcom/amap/api/services/core/al;

    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/ak;->a(Lcom/amap/api/services/core/al;)V

    return-void
.end method

.method public b()Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 20
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    if-nez v1, :cond_0

    .line 36
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    sget-object v0, Lcom/amap/api/services/core/ak;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    invoke-virtual {v2}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/amap/api/services/core/ak;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    invoke-virtual {v2}, Lcom/amap/api/services/core/al;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    sget-object v0, Lcom/amap/api/services/core/ak;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    invoke-virtual {v2}, Lcom/amap/api/services/core/al;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/core/as;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/amap/api/services/core/ak;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/services/core/ak;->e:Lcom/amap/api/services/core/al;

    invoke-virtual {v2}, Lcom/amap/api/services/core/al;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 34
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_1
.end method

.method public synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/ak;->a(Landroid/database/Cursor;)Lcom/amap/api/services/core/al;

    move-result-object v0

    return-object v0
.end method
