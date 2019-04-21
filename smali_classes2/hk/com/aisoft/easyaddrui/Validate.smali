.class Lhk/com/aisoft/easyaddrui/Validate;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static isCorrectLength([BILjava/lang/String;)V
    .locals 5
    .param p0, "object"    # [B
    .param p1, "length"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    const-string v0, "%s cannot be null."

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-static {p0, v0, v3}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    array-length v0, p0

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "%s should be %d bytes, found %d bytes."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    array-length v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void

    :cond_0
    move v0, v2

    .line 47
    goto :goto_0
.end method

.method static varargs isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "test"    # Z
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    return-void
.end method

.method static varargs notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    return-void
.end method
