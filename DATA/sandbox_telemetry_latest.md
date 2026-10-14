# sandbox_telemetry_parse — 2026-10-14 20:54:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=483558 lines=1074
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1069 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1069} |
| `chromeGpuPssKb` | {'int': 1069} |
| `chromeOtherPssKb` | {'int': 1069} |
| `chromeProcesses` | {'int': 1069} |
| `chromeProfiles` | {'int': 1069} |
| `chromeRendererMaxPssKb` | {'int': 1069} |
| `chromeRendererPssKb` | {'int': 1069} |
| `chromeRenderers` | {'int': 1069} |
| `chromeTabs` | {'int': 1069} |
| `chromeTabsProbedProfiles` | {'int': 1069} |
| `chromeUtilityPssKb` | {'int': 1069} |
| `desktopPssKb` | {'int': 1069} |
| `hostPssKb` | {'int': 1069} |
| `kind` | {'str': 1069} |
| `memAvailableKb` | {'int': 1069} |
| `memTotalKb` | {'int': 1069} |
| `otherPssKb` | {'int': 1069} |
| `processes` | {'int': 1069} |
| `pssFallbackProcesses` | {'int': 1069} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
