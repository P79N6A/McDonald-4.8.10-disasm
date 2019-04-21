.class final Lcom/threatmetrix/TrustDefender/al$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/threatmetrix/TrustDefender/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/threatmetrix/TrustDefender/al;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefender/al;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/al$b;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    const-string v1, "onLocationChanged"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    .line 193
    const/4 v1, 0x0

    aget-object v0, p3, v1

    check-cast v0, Landroid/location/Location;

    .line 194
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$b;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/al;->b(Lcom/threatmetrix/TrustDefender/al;)Lcom/threatmetrix/TrustDefender/ao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/threatmetrix/TrustDefender/ao;->onLocationChanged(Landroid/location/Location;)V

    .line 196
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/al$b;->a:Lcom/threatmetrix/TrustDefender/al;

    invoke-virtual {v1, p2, p3}, Lcom/threatmetrix/TrustDefender/al;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
