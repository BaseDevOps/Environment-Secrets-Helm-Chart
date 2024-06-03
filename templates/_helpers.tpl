{{/*
Expand the name of the chart.
*/}}
{{- define "common.name" -}}
{{- default .Release.Name .Values.name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{/*
Control the namespace.
*/}}
{{- define "common.namespace" -}}
{{- default .Release.Namespace .Values.namespaceOverride }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "chart.name" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "common.labels" -}}
helm.sh/chart: {{ include "chart.name" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
