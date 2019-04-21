.class Lcom/threatmetrix/TrustDefender/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/threatmetrix/TrustDefender/an;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 19
    new-instance v1, Lcom/threatmetrix/TrustDefender/g$l;

    new-instance v4, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v4}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    const-string v5, "ThreatMetrixMobileSDK"

    invoke-direct {v1, v4, p0, v5, v3}, Lcom/threatmetrix/TrustDefender/g$l;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;Ljava/lang/String;I)V

    .line 21
    .local v1, "preferences":Lcom/threatmetrix/TrustDefender/g$l;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->a()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/g$e;->b()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_2

    .line 23
    sget-object v3, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    const-string v4, "SharedPreferences wasn\'t found, generating GUID"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 25
    .local v2, "uuid":Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_1
    :goto_0
    return-object v0

    .line 30
    :cond_2
    const/4 v0, 0x0

    .line 33
    .local v0, "genID":Ljava/lang/String;
    :try_start_0
    const-string v3, "ThreatMetrixMobileSDK"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/threatmetrix/TrustDefender/g$l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 40
    :goto_1
    if-nez v0, :cond_1

    .line 42
    sget-object v3, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    const-string v4, "Found nothing in shared prefs, generating GUID"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 44
    .restart local v2    # "uuid":Ljava/util/UUID;
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string v3, "ThreatMetrixMobileSDK"

    invoke-virtual {v1, v3, v0}, Lcom/threatmetrix/TrustDefender/g$l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefender/g$l;->a()V

    goto :goto_0

    .line 37
    .end local v2    # "uuid":Ljava/util/UUID;
    :catch_0
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x20

    .line 146
    move-object v2, p0

    .line 147
    .local v2, "out":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v3

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_2

    move-object v3, v2

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 155
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "md5":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v0, v3, 0x20

    .line 161
    .local v0, "len":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 162
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "len":I
    .end local v1    # "md5":Ljava/lang/String;
    :goto_1
    move-object v3, v2

    .line 171
    goto :goto_0

    .line 169
    :cond_4
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "androidID"    # Ljava/lang/String;
    .param p1, "genID"    # Ljava/lang/String;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "useAltIDScheme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v1, Lcom/threatmetrix/TrustDefender/g$b;->h:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_0
    invoke-static {p2}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "flashCookie":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_0

    .line 207
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    .end local v0    # "flashCookie":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefender/g$b;->h:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/threatmetrix/TrustDefender/ai;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "genID"    # Ljava/lang/String;
    .param p1, "useAltIDScheme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .line 178
    .local v0, "HTML5Cookie":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 179
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "using generated ID for LSC:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static a()Z
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "dodgySerial":Z
    sget-object v1, Lcom/threatmetrix/TrustDefender/g$b;->h:Ljava/lang/String;

    .line 107
    .local v1, "serial":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1234567890ABCDEF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    const/4 v0, 0x1

    .line 112
    :cond_1
    return v0
.end method

.method static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ANDROID_ID"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/g$k;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_1

    .line 57
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    const-string v2, "ANDROID_ID contains nothing useful"

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    .line 62
    :cond_1
    return-object v0
.end method

.method static b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "androidID"    # Ljava/lang/String;
    .param p1, "useAltIDScheme"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 188
    .line 189
    move-object v0, p0

    .local v0, "cookie":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 191
    if-eqz p1, :cond_0

    .line 193
    invoke-static {p0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "using ANDROID_ID for TPC:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, "imei":Ljava/lang/String;
    new-instance v2, Lcom/threatmetrix/TrustDefender/g$i;

    new-instance v4, Lcom/threatmetrix/TrustDefender/g;

    invoke-direct {v4}, Lcom/threatmetrix/TrustDefender/g;-><init>()V

    invoke-direct {v2, v4, p0}, Lcom/threatmetrix/TrustDefender/g$i;-><init>(Lcom/threatmetrix/TrustDefender/g;Landroid/content/Context;)V

    .line 70
    .local v2, "packageManager":Lcom/threatmetrix/TrustDefender/g$i;
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/threatmetrix/TrustDefender/g$i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 74
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 75
    .local v3, "telephonyService":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    .line 77
    :cond_0
    const/4 v4, 0x0

    .line 100
    .end local v3    # "telephonyService":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 79
    .restart local v3    # "telephonyService":Ljava/lang/Object;
    :cond_1
    check-cast v3, Landroid/telephony/TelephonyManager;

    .end local v3    # "telephonyService":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    const-string v4, "000000000000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 82
    :cond_2
    const-string v1, ""

    .line 84
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 85
    sget-object v4, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    const-string v5, "Failed to get useful imei"

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_4
    sget-object v4, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "imei: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    :goto_1
    move-object v4, v1

    .line 100
    goto :goto_0

    .line 91
    :catch_0
    move-exception v4

    sget-object v4, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    .line 92
    const-string v1, ""

    .line 98
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/threatmetrix/TrustDefender/an;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, ""

    goto :goto_1
.end method
