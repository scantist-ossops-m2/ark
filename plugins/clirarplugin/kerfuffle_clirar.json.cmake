{
    "KPlugin": {
        "Description": "Full support for the RAR archive format",
        "Description[ca@valencia]": "Implementació completa del format d'arxiu RAR",
        "Description[ca]": "Implementació completa del format d'arxiu RAR",
        "Description[cs]": "Plná podpora archivačního formátu RAR",
        "Description[da]": "Fuld understøttelse af RAR-arkivformatet",
        "Description[de]": "Vollständige Unterstützung für das RAR-Archivformat",
        "Description[el]": "Πλήρης υποστήριξη για την αρχειοθήκη μορφής RAR",
        "Description[en_GB]": "Full support for the RAR archive format",
        "Description[es]": "Uso total del formato de archivo comprimido RAR",
        "Description[et]": "RAR-arhiivi vormingu täielik toetus",
        "Description[eu]": "RAR artxibo formatuarentzako euskarri osoa",
        "Description[fi]": "Täysi RAR-tiedostomuodon tuki",
        "Description[fr]": "Prise en charge complète du format d'archive RAR",
        "Description[gl]": "Compatibilidade total co formato de arquivo RAR.",
        "Description[it]": "Supporto completo per il formato di archivi RAR",
        "Description[ko]": "RAR 압축 형식 지원",
        "Description[nl]": "Volledige ondersteuning voor het RAR-archiefformaat",
        "Description[nn]": "Full støtte for arkivformatet RAR",
        "Description[pl]": "Pełna obsługa dla archiwów RAR",
        "Description[pt]": "Suporte total para o formato de pacotes RAR",
        "Description[pt_BR]": "Suporte total para o formato de arquivos RAR",
        "Description[ru]": "Полная поддержка архивов RAR",
        "Description[sk]": "Plná podpora pre archívny formát RAR",
        "Description[sl]": "Polna podpora za arhive vrste RAR",
        "Description[sr@ijekavian]": "Пуна подршка за архивски формат РАР",
        "Description[sr@ijekavianlatin]": "Puna podrška za arhivski format RAR",
        "Description[sr@latin]": "Puna podrška za arhivski format RAR",
        "Description[sr]": "Пуна подршка за архивски формат РАР",
        "Description[sv]": "Fullt stöd för arkivformatet RAR",
        "Description[tr]": "RAR arşiv biçimi için tam destek",
        "Description[uk]": "Повноцінна підтримка архівів у форматі RAR",
        "Description[zh_CN]": "完全支持 RAR 归档格式",
        "Description[zh_TW]": "對 RAR 壓縮檔格式的完整支援",
        "Id": "kerfuffle_clirar",
        "MimeTypes": [
            "@SUPPORTED_MIMETYPES@"
        ],
        "Name": "RAR plugin",
        "Name[ca@valencia]": "Connector del RAR",
        "Name[ca]": "Connector del RAR",
        "Name[cs]": "Modul pro RAR",
        "Name[da]": "RAR-plugin",
        "Name[de]": "RAR-Modul",
        "Name[el]": "Πρόσθετο RAR ",
        "Name[en_GB]": "RAR plugin",
        "Name[es]": "Complemento RAR",
        "Name[et]": "RAR-i plugin",
        "Name[eu]": "RAR plugina",
        "Name[fi]": "RAR-liitännäinen",
        "Name[fr]": "Module externe « RAR »",
        "Name[gl]": "Complemento de RAR",
        "Name[ia]": "Plugin de RAR",
        "Name[it]": "Estensione RAR",
        "Name[ko]": "RAR 플러그인",
        "Name[nl]": "RAR-plug-in",
        "Name[nn]": "RAR-tillegg",
        "Name[pl]": "Wtyczka RAR",
        "Name[pt]": "'Plugin' do RAR",
        "Name[pt_BR]": "Plugin RAR",
        "Name[ru]": "Модуль RAR",
        "Name[sk]": "Plugin RAR",
        "Name[sl]": "Vstavek RAR",
        "Name[sr@ijekavian]": "Прикључак за РАР",
        "Name[sr@ijekavianlatin]": "Priključak za RAR",
        "Name[sr@latin]": "Priključak za RAR",
        "Name[sr]": "Прикључак за РАР",
        "Name[sv]": "RAR-insticksprogram",
        "Name[tr]": "RAR eklentisi",
        "Name[uk]": "Додаток RAR",
        "Name[zh_CN]": "RAR 插件",
        "Name[zh_TW]": "RAR 外掛程式",
        "ServiceTypes": [
            "Kerfuffle/Plugin"
        ],
        "Version": "@RELEASE_SERVICE_VERSION@"
    },
    "X-KDE-Kerfuffle-ReadOnlyExecutables": [
        "unrar"
    ],
    "X-KDE-Kerfuffle-ReadWrite": true,
    "X-KDE-Kerfuffle-ReadWriteExecutables": [
        "rar"
    ],
    "X-KDE-Priority": 120,
    "application/vnd.rar": {
        "CompressionLevelDefault": 3,
        "CompressionLevelMax": 5,
        "CompressionLevelMin": 0,
        "CompressionMethodDefault": "RAR4",
        "CompressionMethods": {
            "RAR4": "4",
            "RAR5": "5"
        },
        "EncryptionMethodDefault": "AES128",
        "EncryptionMethods": [
            "AES128",
            "AES256"
        ],
        "HeaderEncryption": true,
        "SupportsMultiVolume": true,
        "SupportsTesting": true,
        "SupportsWriteComment": true
    },
    "application/x-rar": {
        "CompressionLevelDefault": 3,
        "CompressionLevelMax": 5,
        "CompressionLevelMin": 0,
        "CompressionMethodDefault": "RAR4",
        "CompressionMethods": {
            "RAR4": "4",
            "RAR5": "5"
        },
        "EncryptionMethodDefault": "AES128",
        "EncryptionMethods": [
            "AES128",
            "AES256"
        ],
        "HeaderEncryption": true,
        "SupportsMultiVolume": true,
        "SupportsTesting": true,
        "SupportsWriteComment": true
    }
}
