# sandbox_telemetry_parse — 2026-10-15 01:35:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=595654 lines=1322
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1317 |
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
| `chromeBrowserPssKb` | {'int': 1317} |
| `chromeGpuPssKb` | {'int': 1317} |
| `chromeOtherPssKb` | {'int': 1317} |
| `chromeProcesses` | {'int': 1317} |
| `chromeProfiles` | {'int': 1317} |
| `chromeRendererMaxPssKb` | {'int': 1317} |
| `chromeRendererPssKb` | {'int': 1317} |
| `chromeRenderers` | {'int': 1317} |
| `chromeTabs` | {'int': 1317} |
| `chromeTabsProbedProfiles` | {'int': 1317} |
| `chromeUtilityPssKb` | {'int': 1317} |
| `desktopPssKb` | {'int': 1317} |
| `hostPssKb` | {'int': 1317} |
| `kind` | {'str': 1317} |
| `memAvailableKb` | {'int': 1317} |
| `memTotalKb` | {'int': 1317} |
| `otherPssKb` | {'int': 1317} |
| `processes` | {'int': 1317} |
| `pssFallbackProcesses` | {'int': 1317} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
