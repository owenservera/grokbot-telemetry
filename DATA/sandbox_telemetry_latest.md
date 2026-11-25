# sandbox_telemetry_parse — 2026-11-25 16:47:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2838380 lines=6288
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6273 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6273} |
| `chromeGpuPssKb` | {'int': 6273} |
| `chromeOtherPssKb` | {'int': 6273} |
| `chromeProcesses` | {'int': 6273} |
| `chromeProfiles` | {'int': 6273} |
| `chromeRendererMaxPssKb` | {'int': 6273} |
| `chromeRendererPssKb` | {'int': 6273} |
| `chromeRenderers` | {'int': 6273} |
| `chromeTabs` | {'int': 6273} |
| `chromeTabsProbedProfiles` | {'int': 6273} |
| `chromeUtilityPssKb` | {'int': 6273} |
| `desktopPssKb` | {'int': 6273} |
| `hostPssKb` | {'int': 6273} |
| `kind` | {'str': 6273} |
| `memAvailableKb` | {'int': 6273} |
| `memTotalKb` | {'int': 6273} |
| `otherPssKb` | {'int': 6273} |
| `processes` | {'int': 6273} |
| `pssFallbackProcesses` | {'int': 6273} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
