.class public Lcom/rdisoftware/security/RdiSecurity;
.super Ljava/lang/Object;
.source "RdiSecurity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "applicationVersion"    # Ljava/lang/String;
    .param p2, "applicationNonce"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/rdisoftware/security/RdiSecurityCrypto;

    invoke-direct {v0}, Lcom/rdisoftware/security/RdiSecurityCrypto;-><init>()V

    .line 24
    .local v0, "rdiSecurityCrypto":Lcom/rdisoftware/security/RdiSecurityCrypto;
    invoke-virtual {v0, p0, p1, p2}, Lcom/rdisoftware/security/RdiSecurityCrypto;->computeHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
