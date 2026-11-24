# sandbox_telemetry_parse — 2026-11-24 03:41:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2113771 lines=4686
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4671 |
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
| `chromeBrowserPssKb` | {'int': 4671} |
| `chromeGpuPssKb` | {'int': 4671} |
| `chromeOtherPssKb` | {'int': 4671} |
| `chromeProcesses` | {'int': 4671} |
| `chromeProfiles` | {'int': 4671} |
| `chromeRendererMaxPssKb` | {'int': 4671} |
| `chromeRendererPssKb` | {'int': 4671} |
| `chromeRenderers` | {'int': 4671} |
| `chromeTabs` | {'int': 4671} |
| `chromeTabsProbedProfiles` | {'int': 4671} |
| `chromeUtilityPssKb` | {'int': 4671} |
| `desktopPssKb` | {'int': 4671} |
| `hostPssKb` | {'int': 4671} |
| `kind` | {'str': 4671} |
| `memAvailableKb` | {'int': 4671} |
| `memTotalKb` | {'int': 4671} |
| `otherPssKb` | {'int': 4671} |
| `processes` | {'int': 4671} |
| `pssFallbackProcesses` | {'int': 4671} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
