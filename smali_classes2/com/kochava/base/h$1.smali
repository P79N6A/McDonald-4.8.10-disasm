.class Lcom/kochava/base/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kochava/base/h;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/kochava/base/b;Lorg/json/JSONObject;Lcom/kochava/base/AttributionListener;Lcom/kochava/base/AttributionUpdateListener;Lcom/kochava/base/ConsentStatusChangeListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kochava/base/h;


# direct methods
.method constructor <init>(Lcom/kochava/base/h;)V
    .locals 0

    iput-object p1, p0, Lcom/kochava/base/h$1;->a:Lcom/kochava/base/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .param p1    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const-string v0, "STT"

    const-string v1, "uncaughtExcep"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Critical Error: Shutting Down"

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    invoke-static {v5, v0, v1, v2}, Lcom/kochava/base/Tracker;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/kochava/base/Tracker;->unConfigure()V

    return-void
.end method
