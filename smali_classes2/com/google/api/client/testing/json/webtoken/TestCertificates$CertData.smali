.class public Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;
.super Ljava/lang/Object;
.source "TestCertificates.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/json/webtoken/TestCertificates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertData"
.end annotation


# instance fields
.field private pem:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pem"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;->pem:Ljava/lang/String;

    .line 59
    return-void
.end method
