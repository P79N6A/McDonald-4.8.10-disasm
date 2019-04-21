.class public Lcom/admaster/jice/b/a;
.super Ljava/lang/Object;
.source "HttpConfig.java"


# static fields
.field public static a:[Ljavax/net/ssl/TrustManager;

.field private static b:Ljavax/net/ssl/SSLSocketFactory;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 31
    sput-object v0, Lcom/admaster/jice/b/a;->c:Ljava/lang/String;

    .line 34
    sput-object v0, Lcom/admaster/jice/b/a;->d:Ljava/lang/String;

    .line 40
    sput-boolean v2, Lcom/admaster/jice/b/a;->e:Z

    .line 43
    sput-boolean v2, Lcom/admaster/jice/b/a;->f:Z

    .line 46
    sput-boolean v2, Lcom/admaster/jice/b/a;->g:Z

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/admaster/jice/b/a;->h:Ljava/lang/String;

    .line 64
    packed-switch v2, :pswitch_data_0

    .line 76
    const-string v0, "58.215.168.191"

    sput-object v0, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":8888"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/jice/b/a;->j:Ljava/lang/String;

    .line 78
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 182
    new-instance v1, Lcom/admaster/jice/b/b;

    invoke-direct {v1}, Lcom/admaster/jice/b/b;-><init>()V

    aput-object v1, v0, v2

    sput-object v0, Lcom/admaster/jice/b/a;->a:[Ljavax/net/ssl/TrustManager;

    .line 193
    return-void

    .line 66
    :pswitch_0
    const-string v0, "jice.fw4.me"

    sput-object v0, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/jice/b/a;->j:Ljava/lang/String;

    .line 68
    const-string v0, "https://ac.jice.io"

    sput-object v0, Lcom/admaster/jice/b/a;->k:Ljava/lang/String;

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "jice.fw4.me"

    sput-object v0, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/b/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/jice/b/a;->j:Ljava/lang/String;

    .line 73
    const-string v0, "http://jice.stonephp.com"

    sput-object v0, Lcom/admaster/jice/b/a;->k:Ljava/lang/String;

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 109
    const/4 v2, 0x0

    sget-object v3, Lcom/admaster/jice/b/a;->a:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 110
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 115
    :goto_1
    sput-object v0, Lcom/admaster/jice/b/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 116
    return-void

    .line 95
    :pswitch_0
    :try_start_1
    const-string v1, "/api_v1/apps/%s/campaigns/actives"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/admaster/jice/b/a;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 98
    :pswitch_1
    :try_start_2
    const-string v1, "/push/apps/%s/campaigns/actives"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/admaster/jice/b/a;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 111
    :catch_1
    move-exception v1

    .line 112
    const-string v2, "JiceSDK"

    const-string v3, "System has no SSL support."

    invoke-static {v2, v3, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 121
    sput-boolean p0, Lcom/admaster/jice/b/a;->e:Z

    .line 122
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/admaster/jice/b/a;->e:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    sput-object p0, Lcom/admaster/jice/b/a;->c:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 129
    sput-boolean p0, Lcom/admaster/jice/b/a;->g:Z

    .line 130
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/admaster/jice/b/a;->g:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    sput-object p0, Lcom/admaster/jice/b/a;->d:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 137
    sput-boolean p0, Lcom/admaster/jice/b/a;->f:Z

    .line 138
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/admaster/jice/b/a;->f:Z

    return v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/admaster/jice/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcom/admaster/jice/b/a;->k:Ljava/lang/String;

    sput-object v0, Lcom/admaster/jice/b/a;->c:Ljava/lang/String;

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/admaster/jice/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/admaster/jice/b/a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/admaster/jice/b/a;->j:Ljava/lang/String;

    sput-object v0, Lcom/admaster/jice/b/a;->d:Ljava/lang/String;

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/admaster/jice/b/a;->d:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/jc.gif"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/admaster/jice/b/a;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
