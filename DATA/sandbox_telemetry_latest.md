# sandbox_telemetry_parse — 2026-11-26 07:06:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3131917 lines=6937
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6922 |
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
| `chromeBrowserPssKb` | {'int': 6922} |
| `chromeGpuPssKb` | {'int': 6922} |
| `chromeOtherPssKb` | {'int': 6922} |
| `chromeProcesses` | {'int': 6922} |
| `chromeProfiles` | {'int': 6922} |
| `chromeRendererMaxPssKb` | {'int': 6922} |
| `chromeRendererPssKb` | {'int': 6922} |
| `chromeRenderers` | {'int': 6922} |
| `chromeTabs` | {'int': 6922} |
| `chromeTabsProbedProfiles` | {'int': 6922} |
| `chromeUtilityPssKb` | {'int': 6922} |
| `desktopPssKb` | {'int': 6922} |
| `hostPssKb` | {'int': 6922} |
| `kind` | {'str': 6922} |
| `memAvailableKb` | {'int': 6922} |
| `memTotalKb` | {'int': 6922} |
| `otherPssKb` | {'int': 6922} |
| `processes` | {'int': 6922} |
| `pssFallbackProcesses` | {'int': 6922} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
