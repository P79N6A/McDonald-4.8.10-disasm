.class Lcom/amap/api/location/a$2;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/location/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/location/a;


# direct methods
.method constructor <init>(Lcom/amap/api/location/a;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/amap/api/location/a$2;->a:Lcom/amap/api/location/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/amap/api/location/a$2;->a:Lcom/amap/api/location/a;

    invoke-static {v0}, Lcom/amap/api/location/a;->f(Lcom/amap/api/location/a;)V

    .line 406
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 407
    return-void
.end method
