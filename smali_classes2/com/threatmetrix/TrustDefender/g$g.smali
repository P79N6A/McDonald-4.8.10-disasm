.class final Lcom/threatmetrix/TrustDefender/g$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Field;

.field private static p:Ljava/lang/reflect/Field;

.field private static q:Ljava/lang/reflect/Field;

.field private static r:Ljava/lang/reflect/Field;

.field private static s:Ljava/lang/reflect/Field;

.field private static t:Ljava/lang/reflect/Field;

.field private static u:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1049
    const-string v0, "android.net.ConnectivityManager"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    .line 1050
    const-string v0, "android.net.NetworkInfo"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->b:Ljava/lang/Class;

    .line 1051
    const-string v0, "android.net.wifi.WifiInfo"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->d:Ljava/lang/Class;

    .line 1052
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->e:Ljava/lang/Class;

    .line 1053
    const-string v0, "android.net.NetworkInfo$State"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->c:Ljava/lang/Class;

    .line 1055
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "getActiveNetworkInfo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->f:Ljava/lang/reflect/Method;

    .line 1056
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->b:Ljava/lang/Class;

    const-string v1, "getState"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->h:Ljava/lang/reflect/Method;

    .line 1057
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->b:Ljava/lang/Class;

    const-string v1, "getType"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->i:Ljava/lang/reflect/Method;

    .line 1058
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->b:Ljava/lang/Class;

    const-string v1, "getExtraInfo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->j:Ljava/lang/reflect/Method;

    .line 1059
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->d:Ljava/lang/Class;

    const-string v1, "getBSSID"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->k:Ljava/lang/reflect/Method;

    .line 1060
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->d:Ljava/lang/Class;

    const-string v1, "getSSID"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->l:Ljava/lang/reflect/Method;

    .line 1061
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->d:Ljava/lang/Class;

    const-string v1, "getRssi"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->m:Ljava/lang/reflect/Method;

    .line 1062
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->e:Ljava/lang/Class;

    const-string v1, "getConnectionInfo"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->n:Ljava/lang/reflect/Method;

    .line 1063
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->b:Ljava/lang/Class;

    const-string v1, "isConnectedOrConnecting"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->g:Ljava/lang/reflect/Method;

    .line 1065
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "CONNECTIVITY_ACTION"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->o:Ljava/lang/reflect/Field;

    .line 1066
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "TYPE_MOBILE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->p:Ljava/lang/reflect/Field;

    .line 1067
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "TYPE_WIFI"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->q:Ljava/lang/reflect/Field;

    .line 1068
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "TYPE_BLUETOOTH"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->r:Ljava/lang/reflect/Field;

    .line 1069
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->a:Ljava/lang/Class;

    const-string v1, "TYPE_ETHERNET"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->s:Ljava/lang/reflect/Field;

    .line 1070
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->e:Ljava/lang/Class;

    const-string v1, "NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->u:Ljava/lang/reflect/Field;

    .line 1071
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->c:Ljava/lang/Class;

    const-string v1, "CONNECTED"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$g;->t:Ljava/lang/reflect/Field;

    .line 1073
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 1077
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1083
    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->o:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->t:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->h:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->j:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->i:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->p:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->q:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_1

    move v0, v1

    .line 1090
    .local v0, "result":Z
    :goto_0
    sget v3, Lcom/threatmetrix/TrustDefender/g$b$a;->c:I

    sget v4, Lcom/threatmetrix/TrustDefender/g$b$b;->f:I

    if-lt v3, v4, :cond_0

    .line 1092
    if-eqz v0, :cond_2

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->s:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/threatmetrix/TrustDefender/g$g;->r:Ljava/lang/reflect/Field;

    if-eqz v3, :cond_2

    move v0, v1

    .line 1097
    :cond_0
    :goto_1
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v0, v2

    .line 1083
    goto :goto_0

    .restart local v0    # "result":Z
    :cond_2
    move v0, v2

    .line 1092
    goto :goto_1
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->u:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->t:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$g;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
