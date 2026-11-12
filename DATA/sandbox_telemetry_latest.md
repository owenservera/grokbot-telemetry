# sandbox_telemetry_parse — 2026-11-12 16:43:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2227828 lines=4931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4922 |
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
| `chromeBrowserPssKb` | {'int': 4922} |
| `chromeGpuPssKb` | {'int': 4922} |
| `chromeOtherPssKb` | {'int': 4922} |
| `chromeProcesses` | {'int': 4922} |
| `chromeProfiles` | {'int': 4922} |
| `chromeRendererMaxPssKb` | {'int': 4922} |
| `chromeRendererPssKb` | {'int': 4922} |
| `chromeRenderers` | {'int': 4922} |
| `chromeTabs` | {'int': 4922} |
| `chromeTabsProbedProfiles` | {'int': 4922} |
| `chromeUtilityPssKb` | {'int': 4922} |
| `desktopPssKb` | {'int': 4922} |
| `hostPssKb` | {'int': 4922} |
| `kind` | {'str': 4922} |
| `memAvailableKb` | {'int': 4922} |
| `memTotalKb` | {'int': 4922} |
| `otherPssKb` | {'int': 4922} |
| `processes` | {'int': 4922} |
| `pssFallbackProcesses` | {'int': 4922} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
