# sandbox_telemetry_parse — 2026-10-14 23:06:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=534634 lines=1187
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1182 |
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
| `chromeBrowserPssKb` | {'int': 1182} |
| `chromeGpuPssKb` | {'int': 1182} |
| `chromeOtherPssKb` | {'int': 1182} |
| `chromeProcesses` | {'int': 1182} |
| `chromeProfiles` | {'int': 1182} |
| `chromeRendererMaxPssKb` | {'int': 1182} |
| `chromeRendererPssKb` | {'int': 1182} |
| `chromeRenderers` | {'int': 1182} |
| `chromeTabs` | {'int': 1182} |
| `chromeTabsProbedProfiles` | {'int': 1182} |
| `chromeUtilityPssKb` | {'int': 1182} |
| `desktopPssKb` | {'int': 1182} |
| `hostPssKb` | {'int': 1182} |
| `kind` | {'str': 1182} |
| `memAvailableKb` | {'int': 1182} |
| `memTotalKb` | {'int': 1182} |
| `otherPssKb` | {'int': 1182} |
| `processes` | {'int': 1182} |
| `pssFallbackProcesses` | {'int': 1182} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
