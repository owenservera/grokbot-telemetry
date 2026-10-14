# sandbox_telemetry_parse — 2026-10-14 18:11:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=414854 lines=922
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 917 |
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
| `chromeBrowserPssKb` | {'int': 917} |
| `chromeGpuPssKb` | {'int': 917} |
| `chromeOtherPssKb` | {'int': 917} |
| `chromeProcesses` | {'int': 917} |
| `chromeProfiles` | {'int': 917} |
| `chromeRendererMaxPssKb` | {'int': 917} |
| `chromeRendererPssKb` | {'int': 917} |
| `chromeRenderers` | {'int': 917} |
| `chromeTabs` | {'int': 917} |
| `chromeTabsProbedProfiles` | {'int': 917} |
| `chromeUtilityPssKb` | {'int': 917} |
| `desktopPssKb` | {'int': 917} |
| `hostPssKb` | {'int': 917} |
| `kind` | {'str': 917} |
| `memAvailableKb` | {'int': 917} |
| `memTotalKb` | {'int': 917} |
| `otherPssKb` | {'int': 917} |
| `processes` | {'int': 917} |
| `pssFallbackProcesses` | {'int': 917} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
