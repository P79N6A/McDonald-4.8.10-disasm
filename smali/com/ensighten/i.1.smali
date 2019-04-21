.class public final Lcom/ensighten/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/i$a;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/ensighten/i;->a:Z

    .line 21
    sput-boolean v0, Lcom/ensighten/i;->b:Z

    .line 26
    sput-boolean v0, Lcom/ensighten/i;->c:Z

    .line 31
    sput-boolean v0, Lcom/ensighten/i;->d:Z

    .line 36
    sput-boolean v0, Lcom/ensighten/i;->e:Z

    .line 41
    sput-boolean v0, Lcom/ensighten/i;->f:Z

    .line 46
    sput-boolean v0, Lcom/ensighten/i;->g:Z

    .line 51
    sput-boolean v0, Lcom/ensighten/i;->h:Z

    .line 56
    sput-boolean v0, Lcom/ensighten/i;->i:Z

    .line 61
    sput-boolean v0, Lcom/ensighten/i;->j:Z

    .line 66
    sput-boolean v0, Lcom/ensighten/i;->k:Z

    .line 71
    sput-boolean v0, Lcom/ensighten/i;->l:Z

    .line 76
    sput-boolean v0, Lcom/ensighten/i;->m:Z

    return-void
.end method

.method public static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 193
    const-string v0, "Ensighten"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    const-string v0, "Ensighten"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 212
    const-string v0, "EnsightenError"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 79
    sput-boolean p0, Lcom/ensighten/i;->a:Z

    .line 80
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 230
    const-string v0, "Ensighten"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 202
    const-string v0, "Ensighten"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 240
    const-string v0, "EnsightenError"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 258
    const-string v0, "EnsightenError"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    const-string v0, "Ensighten"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 249
    const-string v0, "EnsightenError"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 135
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()Z
    .locals 1

    .prologue
    .line 159
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k()Z
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/ensighten/i;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
