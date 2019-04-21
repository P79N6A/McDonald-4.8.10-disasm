.class public final Lcom/ensighten/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/ensighten/j;->a:Z

    .line 22
    sput-boolean v0, Lcom/ensighten/j;->b:Z

    .line 27
    sput-boolean v0, Lcom/ensighten/j;->c:Z

    .line 32
    sput-boolean v0, Lcom/ensighten/j;->d:Z

    .line 37
    sput-boolean v0, Lcom/ensighten/j;->e:Z

    .line 42
    sput-boolean v0, Lcom/ensighten/j;->f:Z

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ensighten/j;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    const-string v0, "EnsightenInstrumentation"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/ensighten/j;->g:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 50
    sput-boolean p0, Lcom/ensighten/j;->a:Z

    .line 51
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/ensighten/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/ensighten/j;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/ensighten/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/ensighten/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/ensighten/j;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
