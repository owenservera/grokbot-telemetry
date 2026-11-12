# sandbox_telemetry_parse — 2026-11-12 14:13:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2166220 lines=4795
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4786 |
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
| `chromeBrowserPssKb` | {'int': 4786} |
| `chromeGpuPssKb` | {'int': 4786} |
| `chromeOtherPssKb` | {'int': 4786} |
| `chromeProcesses` | {'int': 4786} |
| `chromeProfiles` | {'int': 4786} |
| `chromeRendererMaxPssKb` | {'int': 4786} |
| `chromeRendererPssKb` | {'int': 4786} |
| `chromeRenderers` | {'int': 4786} |
| `chromeTabs` | {'int': 4786} |
| `chromeTabsProbedProfiles` | {'int': 4786} |
| `chromeUtilityPssKb` | {'int': 4786} |
| `desktopPssKb` | {'int': 4786} |
| `hostPssKb` | {'int': 4786} |
| `kind` | {'str': 4786} |
| `memAvailableKb` | {'int': 4786} |
| `memTotalKb` | {'int': 4786} |
| `otherPssKb` | {'int': 4786} |
| `processes` | {'int': 4786} |
| `pssFallbackProcesses` | {'int': 4786} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
