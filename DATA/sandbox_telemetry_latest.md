# sandbox_telemetry_parse — 2026-10-06 18:06:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=520946 lines=1147
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1142 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1142} |
| `chromeGpuPssKb` | {'int': 1142} |
| `chromeOtherPssKb` | {'int': 1142} |
| `chromeProcesses` | {'int': 1142} |
| `chromeProfiles` | {'int': 1142} |
| `chromeRendererMaxPssKb` | {'int': 1142} |
| `chromeRendererPssKb` | {'int': 1142} |
| `chromeRenderers` | {'int': 1142} |
| `chromeTabs` | {'int': 1142} |
| `chromeTabsProbedProfiles` | {'int': 1142} |
| `chromeUtilityPssKb` | {'int': 1142} |
| `desktopPssKb` | {'int': 1142} |
| `hostPssKb` | {'int': 1142} |
| `kind` | {'str': 1142} |
| `memAvailableKb` | {'int': 1142} |
| `memTotalKb` | {'int': 1142} |
| `otherPssKb` | {'int': 1142} |
| `processes` | {'int': 1142} |
| `pssFallbackProcesses` | {'int': 1142} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
