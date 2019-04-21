.class final Lcom/threatmetrix/TrustDefender/g$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
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

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;

.field private static r:Ljava/lang/reflect/Field;

.field private static s:Ljava/lang/reflect/Field;

.field private static t:Ljava/lang/reflect/Field;

.field private static u:Ljava/lang/reflect/Field;

.field private static v:Ljava/lang/reflect/Field;

.field private static w:Ljava/lang/reflect/Field;

.field private static x:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1160
    const-string v0, "android.location.Criteria"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    .line 1161
    const-string v0, "android.location.Location"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    .line 1162
    const-string v0, "android.location.LocationProvider"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->c:Ljava/lang/Class;

    .line 1163
    const-string v0, "android.location.LocationListener"

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/at;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->d:Ljava/lang/Class;

    .line 1166
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setAccuracy"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->e:Ljava/lang/reflect/Method;

    .line 1167
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setAltitudeRequired"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->f:Ljava/lang/reflect/Method;

    .line 1168
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setBearingAccuracy"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->g:Ljava/lang/reflect/Method;

    .line 1169
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setCostAllowed"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->h:Ljava/lang/reflect/Method;

    .line 1170
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setSpeedAccuracy"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->i:Ljava/lang/reflect/Method;

    .line 1171
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setSpeedRequired"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->j:Ljava/lang/reflect/Method;

    .line 1172
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setVerticalAccuracy"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->k:Ljava/lang/reflect/Method;

    .line 1173
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "setPowerRequirement"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->l:Ljava/lang/reflect/Method;

    .line 1175
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    const-string v1, "getTime"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->m:Ljava/lang/reflect/Method;

    .line 1176
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    const-string v1, "getProvider"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->n:Ljava/lang/reflect/Method;

    .line 1177
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    const-string v1, "getAccuracy"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->o:Ljava/lang/reflect/Method;

    .line 1178
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    const-string v1, "getLatitude"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->p:Ljava/lang/reflect/Method;

    .line 1179
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->b:Ljava/lang/Class;

    const-string v1, "getLongitude"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->q:Ljava/lang/reflect/Method;

    .line 1182
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "NO_REQUIREMENT"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->r:Ljava/lang/reflect/Field;

    .line 1183
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "POWER_LOW"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->s:Ljava/lang/reflect/Field;

    .line 1184
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "ACCURACY_LOW"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->t:Ljava/lang/reflect/Field;

    .line 1185
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->a:Ljava/lang/Class;

    const-string v1, "ACCURACY_COARSE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->u:Ljava/lang/reflect/Field;

    .line 1187
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->c:Ljava/lang/Class;

    const-string v1, "AVAILABLE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->v:Ljava/lang/reflect/Field;

    .line 1188
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->c:Ljava/lang/Class;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->w:Ljava/lang/reflect/Field;

    .line 1189
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->c:Ljava/lang/Class;

    const-string v1, "OUT_OF_SERVICE"

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/at;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/g$f;->x:Ljava/lang/reflect/Field;

    .line 1190
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 1194
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->h:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->j:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->k:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->r:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->s:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->t:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->u:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 1210
    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->d:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->n:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->v:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->w:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/threatmetrix/TrustDefender/g$f;->x:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
