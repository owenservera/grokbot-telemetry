# sandbox_telemetry_parse — 2026-10-27 09:48:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=448888 lines=996
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 991 |
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
| `chromeBrowserPssKb` | {'int': 991} |
| `chromeGpuPssKb` | {'int': 991} |
| `chromeOtherPssKb` | {'int': 991} |
| `chromeProcesses` | {'int': 991} |
| `chromeProfiles` | {'int': 991} |
| `chromeRendererMaxPssKb` | {'int': 991} |
| `chromeRendererPssKb` | {'int': 991} |
| `chromeRenderers` | {'int': 991} |
| `chromeTabs` | {'int': 991} |
| `chromeTabsProbedProfiles` | {'int': 991} |
| `chromeUtilityPssKb` | {'int': 991} |
| `desktopPssKb` | {'int': 991} |
| `hostPssKb` | {'int': 991} |
| `kind` | {'str': 991} |
| `memAvailableKb` | {'int': 991} |
| `memTotalKb` | {'int': 991} |
| `otherPssKb` | {'int': 991} |
| `processes` | {'int': 991} |
| `pssFallbackProcesses` | {'int': 991} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
