# sandbox_telemetry_parse — 2026-11-19 02:49:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1090092 lines=2418
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2409 |
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
| `chromeBrowserPssKb` | {'int': 2409} |
| `chromeGpuPssKb` | {'int': 2409} |
| `chromeOtherPssKb` | {'int': 2409} |
| `chromeProcesses` | {'int': 2409} |
| `chromeProfiles` | {'int': 2409} |
| `chromeRendererMaxPssKb` | {'int': 2409} |
| `chromeRendererPssKb` | {'int': 2409} |
| `chromeRenderers` | {'int': 2409} |
| `chromeTabs` | {'int': 2409} |
| `chromeTabsProbedProfiles` | {'int': 2409} |
| `chromeUtilityPssKb` | {'int': 2409} |
| `desktopPssKb` | {'int': 2409} |
| `hostPssKb` | {'int': 2409} |
| `kind` | {'str': 2409} |
| `memAvailableKb` | {'int': 2409} |
| `memTotalKb` | {'int': 2409} |
| `otherPssKb` | {'int': 2409} |
| `processes` | {'int': 2409} |
| `pssFallbackProcesses` | {'int': 2409} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
