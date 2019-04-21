.class Lcom/threatmetrix/TrustDefender/ae;
.super Lcom/threatmetrix/TrustDefender/at;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 13
    const-class v1, Lcom/threatmetrix/TrustDefender/ae;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ae;->c:Ljava/lang/String;

    .line 20
    const-string v1, "android.net.Proxy"

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/ae;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    .local v0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getDefaultHost"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ae;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ae;->a:Ljava/lang/reflect/Method;

    .line 22
    const-string v1, "getDefaultPort"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/ae;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefender/ae;->b:Ljava/lang/reflect/Method;

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 26
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/at;-><init>()V

    .line 15
    iput-object v7, p0, Lcom/threatmetrix/TrustDefender/ae;->d:Ljava/lang/String;

    .line 16
    iput v6, p0, Lcom/threatmetrix/TrustDefender/ae;->e:I

    .line 28
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "host":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/ae;->d:Ljava/lang/String;

    .line 33
    :cond_0
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "portStr":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefender/ae;->e:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/ae;->d:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/threatmetrix/TrustDefender/ae;->e:I

    if-nez v4, :cond_4

    .line 49
    :cond_2
    sget-object v4, Lcom/threatmetrix/TrustDefender/ae;->b:Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/threatmetrix/TrustDefender/ae;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 50
    .local v2, "p":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 51
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefender/ae;->e:I

    .line 53
    :cond_3
    sget-object v4, Lcom/threatmetrix/TrustDefender/ae;->a:Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/threatmetrix/TrustDefender/ae;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 55
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/ae;->d:Ljava/lang/String;

    .line 57
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "p":Ljava/lang/Integer;
    :cond_4
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/ae;->d:Ljava/lang/String;

    return-object v0
.end method

.method final b()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/threatmetrix/TrustDefender/ae;->e:I

    return v0
.end method
