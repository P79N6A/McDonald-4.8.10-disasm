.class public Lcom/amap/api/services/core/y;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/core/y$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sput-object v1, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/amap/api/services/core/y;->b:Z

    .line 154
    sput-object v1, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    .line 319
    sput-object v1, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;

    .line 364
    sput-object v1, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    .line 428
    sput-object v1, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    .line 80
    :cond_1
    sget-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    sget-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :cond_2
    :try_start_1
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.UTSystemConfig/Global/Alvin2.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 102
    new-instance v2, Lcom/amap/api/services/core/y$a;

    invoke-direct {v2}, Lcom/amap/api/services/core/y$a;-><init>()V

    .line 103
    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 117
    :cond_3
    :goto_1
    sget-object v0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 108
    :catch_2
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 110
    :catch_3
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 112
    :catch_4
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 114
    :catch_5
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/amap/api/services/core/y;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 528
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 529
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v0, v3, -0x1

    if-ge v2, v0, :cond_2

    .line 530
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sub-int v0, v3, v2

    if-ge v1, v0, :cond_1

    .line 532
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v0, :cond_0

    .line 533
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 534
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 529
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 539
    :cond_2
    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/amap/api/services/core/y;->b:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/amap/api/services/core/y;->b:Z

    return p0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    .line 127
    :cond_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 130
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 133
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    invoke-static {v0}, Lcom/amap/api/services/core/y;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 136
    const/4 v1, 0x1

    move v3, v2

    .line 137
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    const/16 v0, 0xa

    if-ge v3, v0, :cond_5

    .line 138
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 139
    if-eqz v1, :cond_4

    move v1, v2

    .line 144
    :goto_2
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 142
    :cond_4
    const-string/jumbo v6, "||"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "DeviceInfo"

    const-string v2, "getWifiMacs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    .line 173
    :goto_0
    return-object v0

    .line 162
    :cond_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    sget-object v0, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    goto :goto_0

    .line 165
    :cond_1
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 168
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    sget-object v0, Lcom/amap/api/services/core/y;->c:Ljava/lang/String;

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "DeviceInfo"

    const-string v2, "getDeviceMac"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 184
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 185
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2

    .line 186
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 187
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 188
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "||"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&bt=gsm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_1

    .line 192
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 193
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    .line 194
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 195
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 196
    if-ltz v2, :cond_3

    if-ltz v3, :cond_3

    if-gez v0, :cond_3

    .line 200
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "||"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&bt=cdma"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    const-string v2, "DeviceInfo"

    const-string v3, "cellInfo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    const-string v0, ""

    .line 246
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->v(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 247
    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static f(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 255
    const/4 v0, -0x1

    .line 257
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->w(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 259
    :catch_0
    move-exception v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 267
    const/4 v0, -0x1

    .line 269
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->u(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 276
    :goto_0
    return v0

    .line 270
    :catch_0
    move-exception v1

    .line 272
    const-string v2, "DeviceInfo"

    const-string v3, "getActiveNetWorkType"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static h(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 280
    const/4 v0, -0x1

    .line 282
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->u(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 283
    :catch_0
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 295
    :try_start_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v1

    .line 298
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 316
    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 312
    const-string v2, "DeviceInfo"

    const-string v3, "getNetworkExtraInfo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;

    .line 339
    :goto_0
    return-object v0

    .line 326
    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 327
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 329
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 330
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 331
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 332
    if-le v1, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_2
    sget-object v0, Lcom/amap/api/services/core/y;->d:Ljava/lang/String;

    goto :goto_0

    .line 332
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    .line 336
    const-string v1, "DeviceInfo"

    const-string v2, "getReslution"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 349
    :goto_0
    return-object v0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 349
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 355
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->t(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "DeviceInfo"

    const-string v2, "getActiveNetworkTypeName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    :try_start_0
    sget-object v0, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    sget-object v0, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    .line 382
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    sget-object v0, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 376
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    sget-object v0, Lcom/amap/api/services/core/y;->e:Ljava/lang/String;

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 379
    const-string v1, "DeviceInfo"

    const-string v2, "getDeviceID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->r(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v1

    .line 391
    const-string v2, "DeviceInfo"

    const-string v3, "getSubscriberId"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 399
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->s(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    const-string v1, "DeviceInfo"

    const-string v2, "getNetworkOperatorName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->s(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 411
    :catch_0
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static q(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/core/y;->r(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    .line 422
    :catch_0
    move-exception v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 425
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    sget-object v0, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    sget-object v0, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    .line 442
    :goto_0
    return-object v0

    .line 435
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 440
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    .line 442
    sget-object v0, Lcom/amap/api/services/core/y;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    :goto_0
    return-object v0

    .line 451
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 453
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    .line 461
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, ""

    .line 476
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 466
    if-nez v0, :cond_1

    .line 467
    const-string v0, ""

    goto :goto_0

    .line 469
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 470
    if-nez v0, :cond_2

    .line 471
    const-string v0, ""

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static u(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 480
    const/4 v1, -0x1

    .line 481
    if-eqz p0, :cond_0

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 497
    :goto_0
    return v0

    .line 484
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 486
    if-nez v0, :cond_2

    move v0, v1

    .line 487
    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 491
    if-nez v0, :cond_3

    move v0, v1

    .line 492
    goto :goto_0

    .line 495
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method private static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 502
    const-string v0, ""

    .line 503
    invoke-static {p0}, Lcom/amap/api/services/core/y;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-object v0

    .line 507
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static w(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 513
    const/4 v0, -0x1

    .line 514
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    :goto_0
    return v0

    .line 517
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 519
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method
