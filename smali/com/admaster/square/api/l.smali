.class Lcom/admaster/square/api/l;
.super Ljava/lang/Object;
.source "DeviceParamBuilder.java"


# instance fields
.field private a:Lcom/admaster/square/api/k;


# direct methods
.method public constructor <init>(Lcom/admaster/square/api/k;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    .line 18
    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 27
    const-string v0, "mac"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    const-string v0, "idfa"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    const-string v0, "imei"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    const-string v0, "imsi"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    const-string v0, "androidID"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    const-string v0, "osv"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->f:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    const-string v0, "brand"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->g:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 34
    const-string v0, "model"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 35
    const-string v0, "net"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 36
    const-string v0, "mcc"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->j:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    const-string v0, "mnc"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->k:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    const-string v0, "ap_mac"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    const-string v0, "is_root"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->n:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    const-string v0, "ap_name"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->m:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    const-string v0, "iccid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    const-string v0, "cpuinfoid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->t:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    const-string v0, "sdfullsize"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-wide v2, v1, Lcom/admaster/square/api/k;->y:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    const-string v0, "sdfreesize"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-wide v2, v1, Lcom/admaster/square/api/k;->z:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    const-string v0, "screenpix"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->v:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    const-string v0, "MAC1"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->w:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    const-string v0, "mt"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->x:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    const-string v0, "emufeatureserial"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->A:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    const-string v0, "sysid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->B:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    const-string v0, "sysappid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->C:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    const-string v0, "sensorlistid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->D:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    const-string v0, "convisionid"

    iget-object v1, p0, Lcom/admaster/square/api/l;->a:Lcom/admaster/square/api/k;

    iget-object v1, v1, Lcom/admaster/square/api/k;->u:Ljava/lang/String;

    invoke-static {p1, v0, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    invoke-direct {p0, v0}, Lcom/admaster/square/api/l;->a(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 23
    return-object v0
.end method
