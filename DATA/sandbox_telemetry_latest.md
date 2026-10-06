# sandbox_telemetry_parse — 2026-10-06 17:04:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=493130 lines=1086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1081 |
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
| `chromeBrowserPssKb` | {'int': 1081} |
| `chromeGpuPssKb` | {'int': 1081} |
| `chromeOtherPssKb` | {'int': 1081} |
| `chromeProcesses` | {'int': 1081} |
| `chromeProfiles` | {'int': 1081} |
| `chromeRendererMaxPssKb` | {'int': 1081} |
| `chromeRendererPssKb` | {'int': 1081} |
| `chromeRenderers` | {'int': 1081} |
| `chromeTabs` | {'int': 1081} |
| `chromeTabsProbedProfiles` | {'int': 1081} |
| `chromeUtilityPssKb` | {'int': 1081} |
| `desktopPssKb` | {'int': 1081} |
| `hostPssKb` | {'int': 1081} |
| `kind` | {'str': 1081} |
| `memAvailableKb` | {'int': 1081} |
| `memTotalKb` | {'int': 1081} |
| `otherPssKb` | {'int': 1081} |
| `processes` | {'int': 1081} |
| `pssFallbackProcesses` | {'int': 1081} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
