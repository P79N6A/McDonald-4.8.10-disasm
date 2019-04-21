.class public Lcom/admaster/square/utils/o;
.super Ljava/lang/Object;
.source "NetWorkInfoUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->a:Ljava/lang/String;

    .line 40
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->b:Ljava/lang/String;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->d:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/admaster/square/utils/o;->f(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 116
    const-string v1, ""

    .line 118
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    const-string v0, ""

    .line 146
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 123
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_7

    .line 125
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    .line 126
    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_3

    .line 127
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 128
    :cond_3
    const-string v0, "2g"

    goto :goto_0

    .line 129
    :cond_4
    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 130
    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    .line 131
    const/4 v2, 0x6

    if-eq v0, v2, :cond_5

    .line 132
    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    .line 133
    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    .line 134
    const/16 v2, 0xa

    if-eq v0, v2, :cond_5

    .line 135
    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    .line 136
    const/16 v2, 0xe

    if-eq v0, v2, :cond_5

    .line 137
    const/16 v2, 0xf

    if-ne v0, v2, :cond_6

    .line 138
    :cond_5
    const-string v0, "3g"

    goto :goto_0

    .line 139
    :cond_6
    const/16 v2, 0xd

    if-ne v0, v2, :cond_7

    .line 140
    const-string v0, "4g"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string v0, ""

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/admaster/square/utils/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 212
    :cond_0
    sget-object v0, Lcom/admaster/square/utils/o;->a:Ljava/lang/String;

    .line 225
    :goto_0
    return-object v0

    .line 215
    :cond_1
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 216
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/o;->a:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/admaster/square/utils/o;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 235
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/o;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    sget-object v0, Lcom/admaster/square/utils/o;->b:Ljava/lang/String;

    return-object v0

    .line 240
    :cond_0
    :try_start_1
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 253
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 254
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    .line 259
    const-string v0, "[`~!@#$%^&*()+=|{}\':;\',//[//].<>/?~\uff01@#\uffe5%\u2026\u2026&*\uff08\uff09\u2014\u2014+|{}\u3010\u3011\u2018\uff1b\uff1a\u201d\u201c\u2019\u3002\uff0c\u3001\uff1f]"

    .line 260
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 261
    sget-object v1, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 262
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    .line 263
    sget-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    .line 269
    :goto_0
    return-object v0

    .line 266
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v0, ""

    sput-object v0, Lcom/admaster/square/utils/o;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 60
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 65
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 67
    goto :goto_0
.end method
