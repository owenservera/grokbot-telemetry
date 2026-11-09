# sandbox_telemetry_parse — 2026-11-09 11:59:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=644830 lines=1433
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1424 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1424} |
| `chromeGpuPssKb` | {'int': 1424} |
| `chromeOtherPssKb` | {'int': 1424} |
| `chromeProcesses` | {'int': 1424} |
| `chromeProfiles` | {'int': 1424} |
| `chromeRendererMaxPssKb` | {'int': 1424} |
| `chromeRendererPssKb` | {'int': 1424} |
| `chromeRenderers` | {'int': 1424} |
| `chromeTabs` | {'int': 1424} |
| `chromeTabsProbedProfiles` | {'int': 1424} |
| `chromeUtilityPssKb` | {'int': 1424} |
| `desktopPssKb` | {'int': 1424} |
| `hostPssKb` | {'int': 1424} |
| `kind` | {'str': 1424} |
| `memAvailableKb` | {'int': 1424} |
| `memTotalKb` | {'int': 1424} |
| `otherPssKb` | {'int': 1424} |
| `processes` | {'int': 1424} |
| `pssFallbackProcesses` | {'int': 1424} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
