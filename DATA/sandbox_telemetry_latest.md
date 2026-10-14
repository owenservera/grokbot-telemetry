# sandbox_telemetry_parse — 2026-10-14 05:55:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=126026 lines=283
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 278 |
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
| `chromeBrowserPssKb` | {'int': 278} |
| `chromeGpuPssKb` | {'int': 278} |
| `chromeOtherPssKb` | {'int': 278} |
| `chromeProcesses` | {'int': 278} |
| `chromeProfiles` | {'int': 278} |
| `chromeRendererMaxPssKb` | {'int': 278} |
| `chromeRendererPssKb` | {'int': 278} |
| `chromeRenderers` | {'int': 278} |
| `chromeTabs` | {'int': 278} |
| `chromeTabsProbedProfiles` | {'int': 278} |
| `chromeUtilityPssKb` | {'int': 278} |
| `desktopPssKb` | {'int': 278} |
| `hostPssKb` | {'int': 278} |
| `kind` | {'str': 278} |
| `memAvailableKb` | {'int': 278} |
| `memTotalKb` | {'int': 278} |
| `otherPssKb` | {'int': 278} |
| `processes` | {'int': 278} |
| `pssFallbackProcesses` | {'int': 278} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
