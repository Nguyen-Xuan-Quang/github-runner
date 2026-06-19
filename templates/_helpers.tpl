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