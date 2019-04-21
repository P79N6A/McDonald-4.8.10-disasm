.class public Lcom/admaster/square/utils/g;
.super Ljava/lang/Object;
.source "ConnectUtil.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/admaster/square/utils/e;


# direct methods
.method public constructor <init>(Lcom/admaster/square/utils/e;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/admaster/square/utils/g;->a:Lcom/admaster/square/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 487
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method
