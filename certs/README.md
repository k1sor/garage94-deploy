# Сертификаты

Для локального домена `garage94.localhost` сертификат выпускается утилитой mkcert.
Один раз нужно выполнить `mkcert -install`, чтобы локальный центр сертификации попал в
доверенные.

Windows:

```powershell
powershell -ExecutionPolicy Bypass -File issue-certificate.ps1
```

Linux или macOS:

```sh
sh issue-certificate.sh
```

Можно передать другое имя домена первым аргументом. В папке появятся два файла:
`garage94.localhost.pem` и `garage94.localhost-key.pem`. Эти файлы и закрытый ключ в
репозиторий не добавляются, они указаны в `.gitignore`. В репозитории лежат только
скрипты выпуска.
