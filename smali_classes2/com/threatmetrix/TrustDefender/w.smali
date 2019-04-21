.class final Lcom/threatmetrix/TrustDefender/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/regex/Pattern;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 31
    sget-object v0, Lcom/threatmetrix/TrustDefender/TrustDefenderVersion;->numeric:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/threatmetrix/TrustDefender/w;->a:Z

    .line 32
    const-string v0, "\\{\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/w;->b:Ljava/util/regex/Pattern;

    .line 34
    sput-boolean v1, Lcom/threatmetrix/TrustDefender/w;->c:Z

    return-void

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "c"    # Ljava/lang/Class;

    .prologue
    const/16 v3, 0x17

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "c.t.tdm."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_0
    return-object v0
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 120
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v6, ""

    .line 147
    :goto_0
    return-object v6

    .line 122
    :cond_1
    sget-object v6, Lcom/threatmetrix/TrustDefender/w;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 123
    .local v3, "matcher":Ljava/util/regex/Matcher;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v4, "result":Ljava/lang/StringBuffer;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, p1

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 127
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    if-eqz v5, :cond_2

    .line 130
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 125
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    :cond_2
    const-string v6, "null"

    invoke-virtual {v3, v4, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    .line 136
    :cond_3
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "Incorrect number of arguments for this format string"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 140
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 142
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "Incorrect number of arguments for this format string"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 145
    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 61
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "values":[Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->a:Z

    return v0
.end method

.method static b()I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    const-string v2, "TrustDefender"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    sput-boolean v0, Lcom/threatmetrix/TrustDefender/w;->c:Z

    .line 171
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b(I)V

    .line 176
    :goto_0
    return v0

    .line 174
    :cond_0
    sput-boolean v1, Lcom/threatmetrix/TrustDefender/w;->c:Z

    .line 175
    invoke-static {}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->a()Lcom/threatmetrix/TrustDefender/NativeGatherer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/NativeGatherer;->b(I)V

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 82
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->c:Z

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "values":[Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->c:Z

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 90
    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->a:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/threatmetrix/TrustDefender/w;->c:Z

    if-eqz v0, :cond_1

    .line 92
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_1
    return-void
.end method
