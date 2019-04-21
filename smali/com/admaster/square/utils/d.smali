.class Lcom/admaster/square/utils/d;
.super Ljava/lang/Object;
.source "ConnectUtil.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/admaster/square/utils/c;


# direct methods
.method constructor <init>(Lcom/admaster/square/utils/c;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/square/utils/d;->a:Lcom/admaster/square/utils/c;

    .line 503
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
    .line 511
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
    .line 516
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method
