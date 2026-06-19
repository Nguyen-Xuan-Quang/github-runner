{{- define "github-runner.proxyEnv" -}}
- name: HTTPS_PROXY
  value: {{ .Values.proxy.https | quote }}
- name: HTTP_PROXY
  value: {{ .Values.proxy.http | quote }}
- name: https_proxy
  value: {{ .Values.proxy.https | quote }}
- name: http_proxy
  value: {{ .Values.proxy.http | quote }}
- name: NO_PROXY
  value: {{ .Values.proxy.noProxy | quote }}
- name: no_proxy
  value: {{ .Values.proxy.noProxy | quote }}
{{- end }}

{{- define "github-runner.caBundleEnv" -}}
- name: SSL_CERT_FILE
  value: "/runner-certs/ca-bundle.crt"
- name: CURL_CA_BUNDLE
  value: "/runner-certs/ca-bundle.crt"
- name: REQUESTS_CA_BUNDLE
  value: "/runner-certs/ca-bundle.crt"
- name: PIP_CERT
  value: "/runner-certs/ca-bundle.crt"
{{- end }}

{{- define "github-runner.caBundleVolumeMount" -}}
- name: runner-certs
  mountPath: /runner-certs
  readOnly: true
{{- end }}