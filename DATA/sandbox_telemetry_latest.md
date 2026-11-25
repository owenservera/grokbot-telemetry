# sandbox_telemetry_parse — 2026-11-25 05:17:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2606379 lines=5775
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5760 |
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
| `chromeBrowserPssKb` | {'int': 5760} |
| `chromeGpuPssKb` | {'int': 5760} |
| `chromeOtherPssKb` | {'int': 5760} |
| `chromeProcesses` | {'int': 5760} |
| `chromeProfiles` | {'int': 5760} |
| `chromeRendererMaxPssKb` | {'int': 5760} |
| `chromeRendererPssKb` | {'int': 5760} |
| `chromeRenderers` | {'int': 5760} |
| `chromeTabs` | {'int': 5760} |
| `chromeTabsProbedProfiles` | {'int': 5760} |
| `chromeUtilityPssKb` | {'int': 5760} |
| `desktopPssKb` | {'int': 5760} |
| `hostPssKb` | {'int': 5760} |
| `kind` | {'str': 5760} |
| `memAvailableKb` | {'int': 5760} |
| `memTotalKb` | {'int': 5760} |
| `otherPssKb` | {'int': 5760} |
| `processes` | {'int': 5760} |
| `pssFallbackProcesses` | {'int': 5760} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
