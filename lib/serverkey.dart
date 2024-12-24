import 'package:googleapis_auth/auth_io.dart';

class get_server_key {
  Future<String> server_token() async {
    final scopes = [
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging',
    ];
    final client = await clientViaServiceAccount(
        ServiceAccountCredentials.fromJson({
          "type": "service_account",
          "project_id": "chatappyt-46aa1",
          "private_key_id": "64587f5be38b4edb1b1f35b2919a568aaadd906b",
          "private_key":
              "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDVPzd+EL3C8zrd\n9LJGj5kjats//Jo8pUY0ObYfziwF5DFSn5z7U6rQDXrLFPwLgE54iR9bPnnVPBiF\nEdoM1y+wGHhFUWoKXcChKI3yXWbNN/3JSrrPN5nvXWuEDMCy4fpDC45wGfzudqOL\n+i1eZ/LRPkCkUxVQo5KIw9XBuDfKF+gpeIEi5rwCgchrGx63sKK2E205cMIkbK+z\nus6HG6efy7r/8CIBqefVWWl3IBwp0GQnBxO6lfOFkQ/D3Rs52ejhDOhBHLI21Ef/\nM6Kjz4BdDzaAYRzQ/DWQ9M9eh6dmIDSmz7iZlndokKp69+qdnSSvQe8isB2cukLP\nTfTzM0S3AgMBAAECggEAVZWKEXvplPjmetcux5fxR6Amv38DbeyNCP/SguBNlc24\nJ+dsawfwyZBnZGMXJwyHMeQipA2mevikBKAeCcJBXuTrPDLJIsDuwx9SHN/0ls9u\neR+XavvvOXyeXoB5xDFirg7Qy1f6xb/ysoalN7rzXpwj+G9p4hPMBzzFqPpk1aPX\n/bXBBuBoFZ9rnmtS51T8fKusMwm81WS/48E5p8KK9GeyDOtHrRi5y1o0Q9hFntyz\nKEjv35+9ghilYyOh9EIosXZzjoQgsj/7aLJMmZA4uaZrVMeKBJt19k5OEy1l6Y1K\nL4ndcLLSOPGjiNipJgcHlwVT/WPPI69bZbNg+ew+7QKBgQDx9z1B5pgEIx0pDIPR\nJnsEAl1xkv4+GOZhohWp1+vunWVKHzjbc4xJfIpQI7OMpxCaxjHMIajf8l2iNFmj\nm53q7LVPnTdTpbY1fYgg56TihWPDynu6W5pTQnDaLAmp0+53kh4ckZ88gQ2qLsZH\nW0mk/QAETZQnTAcTtpRdTeDQHQKBgQDhnY3MnpdTgGyRLjMUfK3PAAPvaLPLs8vT\nDLlXCGf3lTIFFupRpuCPZrjh5X2Muw5KyYi20xRCiHWIui12IUl1PWkew9Uudo85\nwfQt+FPNr5QUXNJYGK5xRBp/elEDiu57WexrvFugOe0xPV+mb1+MCYONFne7yVHq\n0xGUwI634wKBgHfhfPIno215UDtEPhLjs9MasN1SbLCreYkp2v3ZQsVoKgT9Txg7\nOWg3Ufe+mHi5VRq503ZFvvulgwqYUUkkEquQN4yIYh8JXStHVKio3CJ24CTjL0X3\nmJBjvLH7W5ZOsDmBpXWWGITLk8+beRVlfylFSDrZjOujWWZE8WEA8r9pAoGATogk\n/4CEdBBTugU2yn7LkS4UMJVlYBZpcEERknXempNYIeVkEp/fsoqy+A6FsSK7StTz\nvY+jkbUmFD2Z7XCQvTpvCMJpxg6GtDgK4qV5pjLjfGMC5J9SuSJXht/wqycE8/LN\nFIMv8Ym4Qld2n9xMidYV8FpNuxPMa8ykZf7QrrkCgYEA76kzHtiVs4UYY1u8JLnH\nlLzmaw6xmgInnPto2L5N7vnRpjGaW8QPoJe34pOPZ0x+O38obc5w0MeMuGGp3MXz\nymV/fAO4rs9s7zqr1jXgP/Pboy59PC5N4sSH604cbvux6+/Qt9ssQhD+D2JM1jIc\nFz8rsgSaAagvUCBz00i7X9Y=\n-----END PRIVATE KEY-----\n",
          "client_email":
              "firebase-adminsdk-kfsk4@chatappyt-46aa1.iam.gserviceaccount.com",
          "client_id": "108163406813429016084",
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url":
              "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url":
              "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-kfsk4%40chatappyt-46aa1.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        }),
        scopes);
    final accessserverkey = client.credentials.accessToken.data;
    return accessserverkey;
  }
}
