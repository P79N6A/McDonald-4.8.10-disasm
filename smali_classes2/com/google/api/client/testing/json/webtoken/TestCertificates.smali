.class public Lcom/google/api/client/testing/json/webtoken/TestCertificates;
.super Ljava/lang/Object;
.source "TestCertificates.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;
    }
.end annotation


# static fields
.field public static final BOGUS_CA_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

.field public static final CA_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

.field public static final FOO_BAR_COM_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

.field private static jsonWebSignature:Lcom/google/api/client/json/webtoken/JsonWebSignature;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIC6TCCAdECASowDQYJKoZIhvcNAQELBQAwDzENMAsGA1UEAwwEUm9vdDAeFw0x\nNDExMTgxNjU0MDNaFw0zNDExMTMxNjU0MDNaMGYxCzAJBgNVBAYTAlVTMRMwEQYD\nVQQIDApDYWxpZm9ybmlhMRYwFAYDVQQHDA1Nb3VudGFpbiBWaWV3MRQwEgYDVQQK\nDAtHb29nbGUgSW5jLjEUMBIGA1UEAwwLZm9vLmJhci5jb20wggEiMA0GCSqGSIb3\nDQEBAQUAA4IBDwAwggEKAoIBAQCzFVKJOkqTmyyjMHWBOrLdpYmc0EcvG3MohaV+\nUJrVrI2SDykY8YWSkTKz9BKmF8HP/GjPPDs3184Cej9b1WeyvVB8Rj3guH3oL+sJ\nT3u9V2y4zyo5xO6FWMBYEQ6X8DkGlYtTp5theYbRrXNELul4lF+LtHTCaAANRMkO\nl0NEoLa6BRhOG68gFfIAxx5lT8REE9utvPuy+rCaBHnfHOPf8pn0LSvceBijSIFo\nS3Y5crjPVjyiPAZUHWnHTFAilfHnpLBlGxpCylePQhMKrPcgvDoD9nd0LA6xYLF7\nDPXXSa8FLO+fPV8CNJCAsFuq9Rlf2Tt3SjLtWRYuh5LuctP7AgMBAAEwDQYJKoZI\nhvcNAQELBQADggEBAEsMABZl+8Rlk0hqBktsDurri4nF/07CnSBe/zUbTiYhMpr7\nVRIDlHLoe5lslLilfXzvaymcMFeH1uBxNwhf7IO7WvIwQeUHSV+rHyNygTTieO0J\nn8Hw+4SCohHAdMvD5uWEwn3Lv+W4y7OhaSbzlhVCVCnFLVKicBayUXHtdJXJICok\nR4+h/WNM7g0iKThakZOyfb8h1phy7TMTVlPFKrcVDo5m9+GhtPC4PNjGLok6r/jx\n9CIOCapIqi8fXJEOxKvilYeAYqfjWvhx00juEUBHrpCQ8wT4TA+LlI02cRz5rxW4\nFQAz1NdoG9HZDZWa+NNFTZdAmtWPJMLd+8L8sl4=\n-----END CERTIFICATE-----"

    invoke-direct {v0, v1}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates;->FOO_BAR_COM_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    .line 154
    new-instance v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIC8TCCAdmgAwIBAgIJAMNI15HrGylkMA0GCSqGSIb3DQEBCwUAMA8xDTALBgNV\nBAMMBFJvb3QwHhcNMTQxMTE4MTY1NDAzWhcNMzQxMTEzMTY1NDAzWjAPMQ0wCwYD\nVQQDDARSb290MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzeUNc4bS\nWHhOTU+5MQ/lOmmjQWpfBi+FJuxvoeOmQwi6frPKKsaKKYGfCTPlKE0dmrEP95bn\ni/qL5xApP17orjUe6KRtJAwFNI5EZadIfjbh/q+85C1Cp2BS2YmuZQzXZHP63yyB\np05YcbMKwCBHXaAgYbmTTk+4+1pjNpHP6YiF2gCPvSfzokGyhbvBqnPbnTdI9w6f\njNBYAbr/uBOTU0vK4ktzlWk5lvsm51e8vsLSqWhoHADq0AriAelU4SHsSACkRUQS\nxWV0K5hzTv4ecvCbG9dskiDCwWg+uTRSoAFeZOhONL000q7Vey3DZTcLl8/O4NQV\naZR5iAgVWlWcswIDAQABo1AwTjAdBgNVHQ4EFgQUsimlIRDcJR0ofR7oM8KwHFOH\n+sIwHwYDVR0jBBgwFoAUsimlIRDcJR0ofR7oM8KwHFOH+sIwDAYDVR0TBAUwAwEB\n/zANBgkqhkiG9w0BAQsFAAOCAQEAWQl8SmbQoBV3tjOJ8zMlcN0xOPpSSNbx0g7E\nL/dQgJpet0McW62RHlgQAOKbS3PReo2nsRB/ZRyYDu4i13ZHZ8bMsGOES4BQpz13\nmtmXg9RhsXqL0eDYfBcjjtlruUbxhnALp4VN1zVdyWAPCj0eu3MxpgMWcyn50Qmi\nJSj/Equ/lLhve/wKvjG5WhnV8uRKRuFbFct0DHAHMnZqFHcGS5So0cYnSfK5fbBR\nNelGflhpbbPp0V0aXiqinqD0Ye3OaZdFq+2rP1oC/a5/Ou4LspY3b5oD9rENdy7b\nq0KewPFtgPvUkJrJ3TzbiwvpghZ7zG26bnJ5I7uc4y1VujqaOA==\n-----END CERTIFICATE-----"

    invoke-direct {v0, v1}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates;->CA_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    .line 214
    new-instance v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    const-string v1, "-----BEGIN CERTIFICATE-----\nMIIC8TCCAdmgAwIBAgIJAP2af/EIgk6oMA0GCSqGSIb3DQEBCwUAMA8xDTALBgNV\nBAMMBFJvb3QwHhcNMTQxMTE5MTEwNDMyWhcNMzQxMTE0MTEwNDMyWjAPMQ0wCwYD\nVQQDDARSb290MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtPB0EtUf\naVS9LRljaL4NTYp0tJooMrRTI4ht4ixIv7m6XTSbxVjOtY0228ZPWeUE/3wduezW\n1rWNU4Uh4ezW0rw9CmW6m2zsMjjGwjY4A5ctMRDlgQtxzfHSPWPtTixtBr3YpdcP\nmg9xVIYvSHZ+fA3x5dRFRxdNidVrndVINzUoaoD9hZ/sgCKg9c2hdDSO9prrTpXD\nyatgLZ8LsFJO94HrkfFsQqquwxxvpixyWtjWUpnO28jnbDRC0ADOp/WZQ8exOP+a\nXUcrHdIsC0RcB6csnM6EarfwEm1jnBwDi37Rxk2BFiBYyzEbCrn7M6QY/DQrZJbw\n9gzSIvT2+5OvawIDAQABo1AwTjAdBgNVHQ4EFgQUYo97/In/SDI+pKRTSrSVhPyq\n5UQwHwYDVR0jBBgwFoAUYo97/In/SDI+pKRTSrSVhPyq5UQwDAYDVR0TBAUwAwEB\n/zANBgkqhkiG9w0BAQsFAAOCAQEABuUZ+sF4QD8H+PHvJLz+3+puXYvvE2IpcC65\nRQznp5iq5Rs4oGJvYwyD1bVUbCNz1IoyB9Lfo5QmSuyV1JybalBZ9FCDzZunBT3O\n4Tr6KfziVPHat3vYMNzzJY/IU3u6uLDmqm1J6qoSBkq4yL1AaHFon2j9gT3FXvVk\n7f1DjztAplWQBC4ScepJbiIRJkLxThDmM2g1xKUtZ6LlPL5J5CmXutzWbV5YS1eo\nuVrDRTmXr4wLzpcURWWB2gbPc0l7+1TfvTydVEp7YqN1EhvNmvsejiQCy+4Cq/D1\nm4rBV4SLLaHstTQNqcK1djxy2FbpYD7j5Himdc0oUeYif9gZ9g==\n-----END CERTIFICATE-----\n"

    invoke-direct {v0, v1}, Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates;->BOGUS_CA_CERT:Lcom/google/api/client/testing/json/webtoken/TestCertificates$CertData;

    .line 294
    const/4 v0, 0x0

    sput-object v0, Lcom/google/api/client/testing/json/webtoken/TestCertificates;->jsonWebSignature:Lcom/google/api/client/json/webtoken/JsonWebSignature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method
