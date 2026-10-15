# sandbox_telemetry_parse — 2026-10-15 09:28:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=786398 lines=1744
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1739 |
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
| `chromeBrowserPssKb` | {'int': 1739} |
| `chromeGpuPssKb` | {'int': 1739} |
| `chromeOtherPssKb` | {'int': 1739} |
| `chromeProcesses` | {'int': 1739} |
| `chromeProfiles` | {'int': 1739} |
| `chromeRendererMaxPssKb` | {'int': 1739} |
| `chromeRendererPssKb` | {'int': 1739} |
| `chromeRenderers` | {'int': 1739} |
| `chromeTabs` | {'int': 1739} |
| `chromeTabsProbedProfiles` | {'int': 1739} |
| `chromeUtilityPssKb` | {'int': 1739} |
| `desktopPssKb` | {'int': 1739} |
| `hostPssKb` | {'int': 1739} |
| `kind` | {'str': 1739} |
| `memAvailableKb` | {'int': 1739} |
| `memTotalKb` | {'int': 1739} |
| `otherPssKb` | {'int': 1739} |
| `processes` | {'int': 1739} |
| `pssFallbackProcesses` | {'int': 1739} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
