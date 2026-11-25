# sandbox_telemetry_parse — 2026-11-25 19:50:15 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2899873 lines=6424
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6409 |
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
| `chromeBrowserPssKb` | {'int': 6409} |
| `chromeGpuPssKb` | {'int': 6409} |
| `chromeOtherPssKb` | {'int': 6409} |
| `chromeProcesses` | {'int': 6409} |
| `chromeProfiles` | {'int': 6409} |
| `chromeRendererMaxPssKb` | {'int': 6409} |
| `chromeRendererPssKb` | {'int': 6409} |
| `chromeRenderers` | {'int': 6409} |
| `chromeTabs` | {'int': 6409} |
| `chromeTabsProbedProfiles` | {'int': 6409} |
| `chromeUtilityPssKb` | {'int': 6409} |
| `desktopPssKb` | {'int': 6409} |
| `hostPssKb` | {'int': 6409} |
| `kind` | {'str': 6409} |
| `memAvailableKb` | {'int': 6409} |
| `memTotalKb` | {'int': 6409} |
| `otherPssKb` | {'int': 6409} |
| `processes` | {'int': 6409} |
| `pssFallbackProcesses` | {'int': 6409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
