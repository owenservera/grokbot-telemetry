# sandbox_telemetry_parse — 2026-10-14 14:36:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=337110 lines=750
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 745 |
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
| `chromeBrowserPssKb` | {'int': 745} |
| `chromeGpuPssKb` | {'int': 745} |
| `chromeOtherPssKb` | {'int': 745} |
| `chromeProcesses` | {'int': 745} |
| `chromeProfiles` | {'int': 745} |
| `chromeRendererMaxPssKb` | {'int': 745} |
| `chromeRendererPssKb` | {'int': 745} |
| `chromeRenderers` | {'int': 745} |
| `chromeTabs` | {'int': 745} |
| `chromeTabsProbedProfiles` | {'int': 745} |
| `chromeUtilityPssKb` | {'int': 745} |
| `desktopPssKb` | {'int': 745} |
| `hostPssKb` | {'int': 745} |
| `kind` | {'str': 745} |
| `memAvailableKb` | {'int': 745} |
| `memTotalKb` | {'int': 745} |
| `otherPssKb` | {'int': 745} |
| `processes` | {'int': 745} |
| `pssFallbackProcesses` | {'int': 745} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
