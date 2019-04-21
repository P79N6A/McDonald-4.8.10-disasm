.class Lcom/threatmetrix/TrustDefender/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/threatmetrix/TrustDefender/at;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-static {p0, p1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 249
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 251
    invoke-static {v1, v0}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    :cond_0
    return-object v1
.end method

.method static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "argsType"    # [Ljava/lang/Class;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 199
    if-nez p0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v1

    .line 200
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_0

    .line 201
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_0

    .line 205
    :cond_4
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 206
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, "instance":Ljava/lang/Object;
    goto :goto_0

    .line 211
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v1    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v2

    sget-object v2, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "invocationHandler"    # Ljava/lang/reflect/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "[",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, "ret":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    goto :goto_0
.end method

.method static varargs a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "receiverInstance"    # Ljava/lang/Object;
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, "returnValue":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 63
    .local v1, "invokeFailed":Z
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .local v2, "ret":Ljava/lang/Object;
    move-object v3, v2

    .line 72
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v1, :cond_0

    .line 76
    .end local v1    # "invokeFailed":Z
    :goto_1
    return-object v3

    .line 66
    .restart local v1    # "invokeFailed":Z
    .restart local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 69
    sget-object v4, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "invokeFailed":Z
    .end local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Class;

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 27
    .local v0, "temp":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static a(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 142
    if-nez p0, :cond_0

    move-object v3, v5

    .line 162
    :goto_0
    return-object v3

    .line 144
    :cond_0
    const/4 v3, 0x0

    .line 147
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 149
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_1

    array-length v6, v1

    if-nez v6, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    .line 151
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 154
    aget-object v5, v1, v2

    if-eqz v5, :cond_3

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move-object v3, v4

    .line 160
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 157
    .end local v1    # "fields":[Ljava/lang/reflect/Field;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    sget-object v5, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "fields":[Ljava/lang/reflect/Field;
    .restart local v2    # "i":I
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static varargs b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Class;

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 45
    .local v0, "temp":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    sget-object v1, Lcom/threatmetrix/TrustDefender/at;->a:Ljava/lang/String;

    goto :goto_0
.end method
