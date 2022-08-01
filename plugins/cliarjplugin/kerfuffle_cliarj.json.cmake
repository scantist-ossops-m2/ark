{
    "KPlugin": {
        "Description": "Full support for the ARJ archive formats",
        "Id": "kerfuffle_cliarj",
        "MimeTypes": [
            "@SUPPORTED_MIMETYPES@"
        ],
        "Name": "ARJ plugin",
        "Version": "@RELEASE_SERVICE_VERSION@"
    },
    "X-KDE-Kerfuffle-ReadOnlyExecutables": [
        "arj"
    ],
    "X-KDE-Kerfuffle-ReadWrite": true,
    "X-KDE-Kerfuffle-ReadWriteExecutables": [
        "arj"
    ],
    "X-KDE-Priority": 100,
    "application/arj": {
        "CompressionMethodDefault": "Good (default)",
        "CompressionMethods": {
            "Store (no compression)": "0",
            "Good (default)": "1",
            "Less mem. and comp.": "2",
            "FAST! less comp.": "3",
            "FASTEST! least comp.": "4"
        },
        "Encryption": true,
        "EncryptionMethodDefault": "Standard",
        "EncryptionMethods": [
            "Standard",
            "arjcrypt.so",
            "GOST 40-bit"
        ],
        "SupportsMultiVolume": true,
        "SupportsTesting": true,
        "SupportsWriteComment": true
    },
    "application/x-arj": {
        "CompressionMethodDefault": "Good (default)",
        "CompressionMethods": {
            "Store (no compression)": "0",
            "Good (default)": "1",
            "Less mem. and comp.": "2",
            "FAST! less comp.": "3",
            "FASTEST! least comp.": "4"
        },
        "Encryption": true,
        "EncryptionMethodDefault": "Standard",
        "EncryptionMethods": [
            "Standard",
            "arjcrypt.so",
            "GOST 40-bit"
        ],
        "SupportsMultiVolume": true,
        "SupportsTesting": true,
        "SupportsWriteComment": true
    }
}
