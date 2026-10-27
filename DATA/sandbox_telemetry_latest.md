# sandbox_telemetry_parse — 2026-10-27 10:18:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=462931 lines=1027
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1022 |
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
| `chromeBrowserPssKb` | {'int': 1022} |
| `chromeGpuPssKb` | {'int': 1022} |
| `chromeOtherPssKb` | {'int': 1022} |
| `chromeProcesses` | {'int': 1022} |
| `chromeProfiles` | {'int': 1022} |
| `chromeRendererMaxPssKb` | {'int': 1022} |
| `chromeRendererPssKb` | {'int': 1022} |
| `chromeRenderers` | {'int': 1022} |
| `chromeTabs` | {'int': 1022} |
| `chromeTabsProbedProfiles` | {'int': 1022} |
| `chromeUtilityPssKb` | {'int': 1022} |
| `desktopPssKb` | {'int': 1022} |
| `hostPssKb` | {'int': 1022} |
| `kind` | {'str': 1022} |
| `memAvailableKb` | {'int': 1022} |
| `memTotalKb` | {'int': 1022} |
| `otherPssKb` | {'int': 1022} |
| `processes` | {'int': 1022} |
| `pssFallbackProcesses` | {'int': 1022} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
