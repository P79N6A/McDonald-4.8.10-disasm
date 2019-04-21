.class public Lcom/baidu/android/pushservice/ADPushManager;
.super Ljava/lang/Object;


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/ADPushManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPushADMsgEnable(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/p;->a(Landroid/content/Context;Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/baidu/android/pushservice/util/a;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method
